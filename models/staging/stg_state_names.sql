select *
from {{ source('names', 'state_names')}}