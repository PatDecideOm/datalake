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
    dat_maj
from {{ source('datalake_public', 'mydata') }} 