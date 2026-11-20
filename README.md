# omop-es-achilles

Run [Achilles](https://github.com/OHDSI/Achilles) on an [OMOP-ES](https://github.com/uclh-criu/omop_es) extract

This contains a modified version of the Achilles v1.7.2 SQL queries that create Achilles analysis tables.
The modifications remove analyses that depend on OMOP tables not created by OMOP-ES, specifically:

- drug_era (analyses 900 - 999)
- condition_era (analyses 1000 - 1099)
- payer_plan_period (analyses 1400 - 1499)
