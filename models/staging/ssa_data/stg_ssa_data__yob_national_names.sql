select
    sex,
    name,
    num_births,
    regexp_extract(_file_name, r'yob(\d{4})\.txt') as year
 from {{ source('ssa_data', 'yob_national_names') }}
