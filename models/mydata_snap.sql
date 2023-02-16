/*
    Chargement des données
*/

{{ config(materialized='snapshot') }}

select 
    id,
    libelle
from {{ source('datalake_public', 'mydata') }} 