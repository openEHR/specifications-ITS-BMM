# AGENTS.md

Guidance for AI assistants working in this repository.

## What this repository is

Machine-readable BMM (Basic Meta-Model) schemas of the openEHR component models (AM, BASE, LANG, RM, TERM), consumed by openEHR systems, tools and SDKs. This is a schema-artifact repository: there is **no build system, no test suite, and no linter**. Do not search for build/test commands — they don't exist. Validation of BMM schemas is done externally with openEHR tooling (e.g. Archie, ADL Workbench).

## Structure

```
components/<COMPONENT>/{odin,json,yaml}/openehr_<component>_<release>.bmm[.json|.yaml]
```

- One file per component release; the `odin`, `json` and `yaml` files of the same release are **parallel serializations of the same schema** and carry identical content and metadata.
- `example/EXAMPLE.bmm` — annotated documentation of the BMM ODIN file format.
- `manifest.json` — publishing metadata for specifications.openehr.org. `spec_status` is one of `DEVELOPMENT`, `TRIAL`, `STABLE`, `SUPERSEDED`, `OBSOLETE`, `RETIRED`. Jira: roadmap `SPECITS`, problem reports `SPECPR`.

## Schema conventions

- The syntax and semantics of these files are defined by the [BMM Persistence Model (P_BMM) specification](https://specifications.openehr.org/releases/LANG/development/bmm_persistence.html) (openEHR LANG component) — e.g. the `P_BMM_*` typed objects (`P_BMM_SINGLE_PROPERTY`, `P_BMM_GENERIC_TYPE`, …) used throughout the schemas. Consult it before making structural changes.
- Every schema declares header metadata: `bmm_version`, `rm_publisher`, `schema_name`, `rm_release`, `schema_revision`, `schema_lifecycle_state`. The schema id is computed as `<rm_publisher>_<schema_name>_<rm_release>` (e.g. `openehr_rm_1.2.0`) and matches the filename.
- Schemas reference each other via `includes` by schema id (e.g. RM 1.2.0 includes `openehr_base_1.3.0`). Tools resolve includes by scanning the checkout and indexing files by schema id — keep ids and filenames consistent.
- Known exception: `openehr_lang_1.1.0-bmm3` declares the same schema id as `openehr_lang_1.1.0` but models the BMM3 meta-model package (`org.openehr.lang.bmm3`) instead of `bmm`/`bmm_persistence`/`beom`. Do not "fix" the id; tools must pick one variant.
- ODIN (`.bmm`) files are tab-indented.
- Substantive model changes follow the openEHR change process — reference `SPECITS`/`SPECPR` Jira tickets in commits and PRs where applicable.

## Source of truth and update flow

- At this time, the `json` files are the **source of truth**; they are maintained upstream in each respective repository, and the copies here track them.
- The `odin` and `yaml` files are **generated** from the JSON by the `bmm-publisher` tool — do **not** edit them by hand. A schema change lands here as an updated JSON plus regenerated ODIN/YAML, with `schema_revision` bumped consistently across all three.
- Synchronization is currently a manual process; scripts and GitHub Actions to automate it are planned but do not exist yet. Do not invent or assume sync/build commands.
- Keep `manifest.json` (component list, releases, `spec_status`) in step with schema changes; it drives the listing on specifications.openehr.org.

## History

- The repository was restructured in 2026 (initially on the `new-structure` branch): the old layout (`components/<COMP>/Release-X.Y.Z/`, `original/`, `adl_test/`, per-release `index.php`) is preserved on the `archive/old-master-pre2026` branch.
- The initial content was imported one-time from the `bmm-publisher` tool (JSON from its `resources/`, ODIN/YAML from its generated output). That bulk import will not be repeated — files are updated per schema following the flow described above.
