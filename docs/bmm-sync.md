# BMM schema synchronisation

How BMM JSON schemas travel from the component repositories, where they are edited, to `specifications-ITS-BMM` and `bmm-publisher`, and how drift between the copies is kept out.

## Why

Each BMM schema exists in up to three places: the component repository (`specifications-BASE`, `-RM`, `-AM`, `-LANG`, `-TERM`, under `computable/BMM/`), this repository (`components/<COMPONENT>/json/`), and `bmm-publisher` (`resources/`, bundled into its Docker image). Until 2026 these were copied by hand and had drifted: in mid-2026 `openehr_base_1.3.0` and `openehr_rm_1.2.0` each existed in three different versions, and the released `openehr_base_1.2.0` and `openehr_rm_1.1.0` differed between this repository and `bmm-publisher`.

## Principles

1. **Edit at source.** A schema is changed only in its component repository. The copies here and in `bmm-publisher` are never edited by hand; a fix found downstream is made upstream and flows back.
2. **Only two things propagate:** a release (a release tag) and the current development state (the component's `master`).
3. **Every change lands by pull request, merged by a maintainer.** The robot proposes; people decide. This matches the `Review` ruleset on the default branch of both receiving repositories.
4. **Pull, not push.** The receiving repositories look for changes nightly and on demand. Component repositories need no workflows and no secrets.
5. **Stateless.** Each run compares content, not history, so a missed run, a late tag, or a release cut from an old branch is picked up by the next run.

## Roles

| Repository | Holds | Written by |
|---|---|---|
| `specifications-<COMPONENT>` | the working schema on `master`; released schemas at `Release-*` tags | spec editors |
| `specifications-ITS-BMM` `master` | every released build of every component, plus the current development snapshot of each component (JSON, with generated YAML and ODIN) | sync PRs, merged by a maintainer |
| `bmm-publisher` `main` | `resources/`: a copy of everything on ITS-BMM `master`, used as test input and as the bundled fallback for `-d <schema id>` | sync PR, merged by a maintainer |

For now ITS-BMM `master` doubles as the development channel. The `development` branch of this repository is not used by the sync.

## Release convention (component repositories)

- **Release:** tag `Release-X.Y.Z`. **Correction build of a release:** tag `Release-X.Y.ZvN` (N = 1, 2, …). A build supersedes the previous one and is still published as X.Y.Z. This is the existing tag convention.
- At the tagged commit, `computable/BMM/openehr_<component>_X.Y.Z.bmm.json` carries `rm_release` = `X.Y.Z`.
- Recommended: `schema_revision` = `X.Y.Z.N`, with N the build number (0 for `Release-X.Y.Z`). The sync warns when it does not match; it does not block.
- After a release, set `master` to a provisional next version (rename the file and update `rm_release`). The number may change before release (1.3.0 can become 1.2.1). Until it is bumped, changes on `master` to a released version are reported and not propagated.
- A maintenance release on an older line (for example 1.2.2 after 1.3.0) is branched from the earlier tag and tagged as usual. The branch it was made on does not matter.
- `rm_release` must stay a three-part number: the P_BMM specification defines it so, and Archie rejects anything else (`EC_RM_RELEASE_INVALID`). A development schema is therefore recognised by having no release tag, not by its version string.

## Which source wins

A version X.Y.Z of a component is **released** when its repository has a tag `Release-X.Y.Z` or `Release-X.Y.ZvN`. For each schema file `openehr_<component>_X.Y.Z[-variant].bmm.json` of a component:

| Situation | Source | Result |
|---|---|---|
| a tag `Release-X.Y.Z[vN]` contains the file | the file at the highest-N tag | proposed for ITS-BMM if different |
| a tag `Release-X.Y.Z[vN]` exists but contains no BMM files (all tags before 2026) | none: the file in ITS-BMM is the historic record | left untouched |
| no `Release-X.Y.Z*` tag exists, the file is on the component's `master` | the file on `master` (development snapshot) | proposed for ITS-BMM if different |
| the file is on `master` but its version is released (`master` was not bumped) and differs from ITS-BMM | none | reported as "bump `rm_release` on master" |
| the file is in ITS-BMM, unreleased, and no longer on the component's `master` (the version was renumbered) | none | reported as orphan; a maintainer removes it |

Only files whose name and `schema_name` belong to the component are considered, so dependency copies in a component repository are ignored. The file name, not the schema id, is the key, which keeps `openehr_lang_1.1.0-bmm3` separate from `openehr_lang_1.1.0`. The sync never deletes files.

## ITS-BMM sync job

Workflow `.github/workflows/sync.yml`: nightly, and on demand from the Actions tab.

1. For each component (AM, BASE, LANG, RM, TERM), read its tags with `git ls-remote` and its BMM files at the relevant tags and at `master` (the repositories are public, so no token is needed to read them).
2. Apply the table above to decide, per file, the source and whether the ITS-BMM copy differs.
3. For each differing file: copy the JSON into `components/<COMPONENT>/json/`, regenerate its YAML and ODIN (`make generate`), run the checks, and push branch `bmm-sync/<file stem>` (for example `bmm-sync/openehr_rm_1.2.0`).
4. Open a pull request for that branch, or update the open one. One rolling PR per schema file. Title: `Import openehr_rm_1.2.0 from specifications-RM Release-1.2.0v1` or `Update openehr_base_1.3.0 from specifications-BASE master@<short sha>`. The body links the source commit, lists any check warnings, and says whether the file is a release or a development snapshot.
5. Write a report to the job summary: one row per schema file with its source, status (in sync, PR #n, skipped and why) and any orphans.

The same logic runs locally with `make sync DRY_RUN=1`, which prints the report and creates nothing.

## Checks

Run by the sync job before proposing a file, and by `.github/workflows/check.yml` on every pull request that touches `components/`. They replace the former regenerate-on-push workflow.

Blocking:

- The file name stem equals the schema id `<rm_publisher>_<schema_name>_<rm_release>`, optionally followed by `-<variant>`; the directory matches `schema_name`.
- `rm_release` is a three-part number.
- Every schema in `includes` exists in `components/*/json/`. For a released file, every included schema is itself released.
- The YAML and ODIN files are identical to what `bmm-publisher` generates from the JSON.

Warning only:

- `schema_revision` does not match the release build (`X.Y.Z.N`).

Pull requests opened by the robot use the repository's built-in `GITHUB_TOKEN`, so GitHub holds their check runs until a maintainer clicks **Approve and run**.

## bmm-publisher sync job

Workflow `.github/workflows/sync-resources.yml` in `bmm-publisher`: nightly, one hour after the ITS-BMM job, and on demand.

1. Check out ITS-BMM `master` and compare each `components/*/json/*.bmm.json` with `resources/`.
2. If anything differs: copy the changed and new files into `resources/`, run `make publish-all`, and commit both on branch `bmm-sync/resources`. The regenerated `output/` is required by the existing `verify-output` CI job, and its diff shows reviewers what the model change does to the generated documentation.
3. Open or update one rolling PR, `Sync BMM resources from specifications-ITS-BMM@<short sha>`. The body lists changed and new schemas, and flags new schemas missing from the hard-coded schema list in the `Makefile` (the AsciiDoc and PlantUML publishers only process listed schemas; YAML, ODIN and split-JSON pick up every file).
4. Files in `resources/` that are not in ITS-BMM are reported, not removed.

A merged sync reaches users of the Docker image at the next `bmm-publisher` release.

## One-off clean-up

- ITS-BMM: replace `&#42;` with `*` in `openehr_base_1.2.0` and `openehr_rm_1.1.0` and regenerate, applying the fix `bmm-publisher` made in commit `8f8ecc2`; after this the released copies agree.
- ITS-BMM: remove the `repository_dispatch` path (`generate.yml`, `.github/sender-workflow-example.yml`, `make import`) and update `AGENTS.md` and the `Makefile` help to describe this flow.
- `bmm-publisher`: state in `AGENTS.md` that `resources/` is synchronised from ITS-BMM and must not be edited there.

## Known limits

- GitHub disables scheduled workflows in a public repository after 60 days without repository activity. A quiet ITS-BMM can lose its nightly run; the missing report is the signal, and the workflow is re-enabled from the Actions tab.
- Development snapshots keep the header their editors wrote, including `schema_lifecycle_state`; the sync does not rewrite content.
- Up to a day passes between a tag and its PR, unless the job is run by hand.
- YAML and ODIN are generated with `ghcr.io/openehr/bmm-publisher:latest`. A new `bmm-publisher` release that changes those formats makes the YAML/ODIN check fail on every PR until a maintainer regenerates all files in one PR.

## Not in scope

- A separate development channel (the `development` branch of this repository).
- `bmm-publisher` resolving dependencies from ITS-BMM at run time instead of from its bundled copies.
- Push notification from component repositories (which would need a GitHub App).
- Back-filling historic releases from tags: no tag before 2026 contains a BMM file.
