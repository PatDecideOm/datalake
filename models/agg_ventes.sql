/*
    Chargement des données
*/

{{ config(materialized='table') }}

select 
    sum(id) as nb_id
from {{ source('datalake_public', 'mydata') }} 