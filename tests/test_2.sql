select 
    sk_account_id
from {{ ref('dim_account') }} 
where sk_account_id is null
