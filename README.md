# specifications-ITS-BMM

BMM schemas for use with openEHR systems, tools and applications. See the [release baseline](https://specifications.openehr.org/release_baseline) of current specifications.

Schema format is based on the [BMM Persistence Model (P_BMM) specification](https://specifications.openehr.org/releases/LANG/development/bmm_persistence.html).

## Structure

The repository is structured as follows:

```
/components
    /AM           # BMMs for AM component
    /BASE         # BMMs for BASE component
    /LANG         # BMMs for LANG component
    /RM           # BMMs for RM component
    /TERM         # BMMs for TERM component
        /odin     # BMM files in ODIN format
        /json     # BMM files in JSON format
        /yaml     # BMM files in YAML format
```

Each component directory contains `odin`, `json` and `yaml` subdirectories, one file per component release, named as `openehr_<component>_<release>.bmm[.json|.yaml]`.

## Update flow

The `json` files are the source of truth; the `odin` and `yaml` files are generated from them by the [bmm-publisher](https://github.com/openEHR/bmm-publisher) tool — do not edit them by hand.

Schema changes are made in the corresponding `specifications-*` repository (under `computable/BMM/`). On push, that repository notifies this one via `repository_dispatch` (see `.github/sender-workflow-example.yml`); the [Generate ODIN/YAML](.github/workflows/generate.yml) workflow then imports the changed JSON, regenerates the ODIN/YAML serializations, and commits all three together.

The same pipeline can be run locally with the `Makefile` (requires docker) — run `make help` for an overview.
