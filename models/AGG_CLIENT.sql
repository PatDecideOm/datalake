/*
    Chargement des données
*/

{{ config(materialized='table') }}

select 
    CLIENT_VILLE as CLIENT_VILLE,
    count(distinct CLIENT_CODE) as NB_CLIENTS
from {{ source('public', 'client') }} 
group by 
    CLIENT_VILLE