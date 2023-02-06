###READ ME

The transformation scripts for the clinvar google sheets project contains all the bigquery SQL procedures, functions and queries needed to transform, collate and build the final tables and views needed to back the Variation Tracker Report google sheets.

The source of these scripts are a combination of google sheet backed tables, code mapping and normalization tables, and the bigquery datasets generated for each clinvar dataset that is ingested by the clinvar ingestions service.

##pre2017
this folder contains the bash scripts for extracting and building as much of the data content to work with the transform and report scripts in order to allow for data before July 2017 to be available in the variation tracker reports. These bash scripts are very basic and not well designed for easy reproduction or maintenance. They are being captured in the event that someone may want to bolster this work if this data is needed at some point.

They rely on the original RCV-based XML formats and other archived TSV files found in the ClinVar FTP site. They output a set of TSV files that are ultimately staged in a GCS bucket and then aggregated into a single set of tables in manually derived dataset named *clingen-stage.clivnar_2019_06_01_v0*.

##report
the report scripts are those scripts used directly by the data connector sheets in the variation tracker google sheets. 
Additionally, any google app scripts used by the variation tracker as well as code blocks used to generate calculated fields will be available here.

##transform
the transform scripts are a series of BQ procedures and functions that normalize input datasets, aggregate into a single dataset, filter to variants of interest (VOI) and produce report output tables.

#prepare input in individual datasets
first, start at an individual clinvar dataset level to normalize the scv data and to identify the single gene variants. 

**tables**
* scv_summary
* single_gene_variation

#aggregate into a single dataset
second, a set of scripts to aggregate and collect all data across clinvar datasets into single tables by data type (i.e. scv, vcv, variant, gene, submitter, etc). 

**tables**
* clinvar_scvs
* clinvar_single_gene_variations
* clinvar_submitters
* clinvar_variations
* clinvar_vcvs

#filter on variants of interest
third, a set of scripts to filter the variants of interest from the aggregated tables which also identify the release start-end ranges that any given record type changes. 

**tables**
*report_variations

* voi
* voi_vcv
* voi_scv

* voi_group
* voi_scv_group

* voi_group_recalc
* voi_scv_group_recalc

* voi_group_change
* voi_scv_change

* voi_group_recalc_chg

* voi_top_group_change
* voi_top_group_recalc_chg

* voi_summary_change
* voi_summary_recalc_chg

#product the output report tables
the fourth and final set of scripts creates individual sets of tables for each variation tracker report configuration (by vcep). These final tables are used by the bigquery data connector sheets in the variation report tracker google sheet.

**tables**
* x_alerts
* x_scv
* x_scv_priorities
* x_var_priorities
* x_variation
where x is the report id and report abbrev label (i.e. rpt020_hl, rpt044_rett, etc...)
