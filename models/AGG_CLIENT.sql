/*
    Chargement des données
*/

{{ config(materialized='table') }}

select 
    CLIENT_VILLE as CLIENT_VILLE,
    count(CLIENT_CODE) as NB_CLIENTS
from {{ source('datalake_public', 'client') }} 
group by 
    CLIENT_VILLE