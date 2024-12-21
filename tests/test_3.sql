select 
    sk_customer_id
from {{ ref('fact_watches') }} 
where sk_date_placed > coalesce(sk_date_removed, sk_date_placed)
