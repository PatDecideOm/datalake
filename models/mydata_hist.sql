/*
    Chargement des données
*/

{{ config(materialized='incremental') }}

select 
    id,
    libelle
from {{ source('datalake_public', 'mydata') }} 