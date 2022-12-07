/*
    Chargement des données
*/

{{ config(materialized='table') }}

select 
    CLIENT_VILLE as CLIENT_VILLE,
    count(CLIENT_CODE) as NB_CLIENTS
from {{ source('PUBLIC', 'CLIENT') }} 
group by 
    CLIENT_VILLE