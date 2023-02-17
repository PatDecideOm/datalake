/*
    Chargement des données
*/

{{ 
    config(
        materialized='incremental',
        unique_key = 'id',
        incremental_strategy='merge'
        ) 
}}

select 
    id,
    libelle,
    date_maj
from {{ source('datalake_public', 'mydata') }} 