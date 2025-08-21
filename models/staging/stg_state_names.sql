select
    state, gender, year_int, number, name
from {{ source('names', 'state_names')}}