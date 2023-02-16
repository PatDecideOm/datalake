/*
    Chargement des données
*/

{% snapshot mydata_snapshot %}

{{
    config(
      target_database='datalake',
      target_schema='dbt',
      unique_key='id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('datalake_public', 'mydata') }}

{% endsnapshot %}