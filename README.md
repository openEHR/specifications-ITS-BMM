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
