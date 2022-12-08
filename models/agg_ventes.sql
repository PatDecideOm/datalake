/*
    Chargement des données
*/

{{ config(materialized='table') }}

select 
    client_code                         as client_code,
    sum(nb_articles)                    as nb_articles,
    sum(replace(ca_vente,',','.'))      as ca_vente
from {{ source('public', 'ventes') }} 
group by 
    client_code