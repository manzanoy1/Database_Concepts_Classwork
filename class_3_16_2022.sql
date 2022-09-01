-- Yanira Manzano
-- 3/16/2022

use ap;

-- A summary query
select
	count(*) as number_of_invoices,
    sum(invoice_total - payment_total - credit_total) as total_due
from 
	invoices
where
	invoice_total - payment_total - credit_total > 0;
    
-- A summary query with COUNT(*), AVG, and SUM
select
	'After 1/1/2018' as 'selection_date',
	count(*) as number_of_invoices,
    round(avg(invoice_total), 2) as avg_invoice_amt,
    sum(invoice_total) as total_invoice_amt
from
	invoices
where
	invoice_date > '2018-01-01';
    
-- A summary query with MIN and MAX
SELECT 
	'After 1/1/2018' AS 'selection_date', 
    count(*) AS 'number_of_invoices',
    max(invoice_total) AS 'highest_invoice_total',
    min(invoice_total) AS 'lowest_invoice_total'
FROM 
	invoices
WHERE 
	invoice_date > '2018-01-01';

-- A summary query for non-numeric columns
select
	count(vendor_name) as number_of_vendors,
    max(vendor_name),
    min(vendor_name)
from 
	vendors;

--    
select
	count(distinct (vendor_id))
from
	invoices;
    

    
