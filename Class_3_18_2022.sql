-- Yanira Manzano
-- 03/18/2022

use ap;

-- Pratice
select
	vendor_id,
    SUM(invoice_total) as 'total_invoice'
from
	invoices
group by
	vendor_id;
    
-- Class
select
	invoice_date,
    count(*) as 'invoice_qty',
    sum(invoice_total) as 'invoice_sum'
group by
	invoice_date
having invoice_date between '2018-05-01' and '2018-05-31'
		and count(*) > 1 and sum(invoice_total) > 100;

-- HAVING clause
select 
    invoice_date,
    COUNT(*) as 'invoice_qty',
    SUM(invoice_total) as 'invoice_sum'
from invoices
group by invoice_date
having invoice_date between '2018-05-01' and '2018-05-31'
    and COUNT(*) > 1
    and SUM(invoice_total) > 100
order by invoice_date;

-- WHERE clause
select
    invoice_date,
    COUNT(*) as 'invoice_qty',
    SUM(invoice_total) as 'invoice_sum'
from
    invoices
where
    invoice_date between '2018-05-01' and '2018-05-31'
group by invoice_date
having count(*) > 1
    and sum(invoice_total) > 100
order by invoice_date;


-- Query for nulls
select 
	if(grouping(invoice_date) = 1, 'Grand totals',
          invoice_date) as 'invoice_date',
       if(grouping(payment_date) = 1, 'Invoice date totals',
          payment_date) as 'payment_date',
       sum(invoice_total) as 'invoice_total',
       sum(invoice_total - credit_total - payment_total) as 'balance_due'
from 
	invoices
where 
	invoice_date between '2018-07-24' and '2018-07-31'
group by 
	invoice_date, payment_date with rollup;


-- Grouping Level query
select 
    if(grouping(invoice_date) = 1,
        'Grand totals',
        invoice_date) as 'invoice_date',
    if(grouping(payment_date) = 1,
        'Invoice date totals',
        payment_date) as 'payment_date',
    sum(invoice_total) as 'invoice_total',
    sum(invoice_total - credit_total - payment_total) as 'balance_due'
from
    invoices
where
    invoice_date between '2018-07-24' and '2018-07-31'
group by invoice_date , payment_date with rollup
having grouping(invoice_date) = 1
    or grouping(payment_date) = 1;