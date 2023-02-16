/*
    Chargement des données
*/

{% snapshot mydata_snapshot %}

{{
    config(
      target_database='DECIDEOM_LYON',
      target_schema='dbt',
      unique_key='id',

      strategy='timestamp',
      updated_at='date_maj',
    )
}}

select * from {{ source('datalake_public', 'mydata') }}

{% endsnapshot %}