# clinvar-ingest-reports
ClinGen generates several google sheet based reports from the ClinVar ingested data that originates from the Broad BigQuery data.

![ClinVar Ingest Service](files/clinvar%20ingest%20diagram.png)

This repository holds the scripts and instructions to process the ClinVar BQ tables when new ClinVar releases are processed by ClinGen's ClinVar ingestion service.

In addition, it holds the templates and instructions for the various google sheet "reports" so new instances can be generated as well as updates being applied to the templates and re-generation of existing "reports".

These google sheet reports are used for:
* VCEP Variation Tracker Reports
* Genome Connect Variation Tracker Reports
* Custom one-off reports for analysis of special projects
* ...


