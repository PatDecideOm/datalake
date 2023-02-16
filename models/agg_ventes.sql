/*
    Chargement des données
*/

{{ config(materialized='table') }}

select 
    sum(id) as nb_id
from {{ source('snowflake_datalake_public', 'mydata') }} 