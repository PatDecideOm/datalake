/*
    Chargement des données
*/

{% snapshot mydata_snapshot %}

{{
    config(
      target_database='datalake_public',
      target_schema='snapshots',
      unique_key='id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('datalake_public', 'mydata') }}

{% endsnapshot %}