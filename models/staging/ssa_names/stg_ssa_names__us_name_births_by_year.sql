select
    sex,
    name,
    births,
    regexp_extract(_file_name, r'yob(\d{4})\.txt') as year
 from {{ source('ssa_names', 'us_name_births_by_year') }}
