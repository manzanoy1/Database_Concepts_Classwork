-- Yanira Manzano
-- 04/27/2022

use ap;

-- Practice
SELECT 
    invoice_number, invoice_date, invoice_total
FROM
    invoices
        JOIN
    vendors ON invoices.vendor_id = vendors.vendor_id
WHERE
    vendor_state = 'CA'
ORDER BY invoice_date;

-- Subquery without invoices
SELECT 
    vendor_id, vendor_name, vendor_state
FROM
    vendors
WHERE
    vendor_id NOT IN (SELECT DISTINCT
            vendor_id
        FROM
            invoices)
ORDER BY vendor_id;

-- query restated without subquery
SELECT 
    v.vendor_id, vendor_name, vendor_state
FROM
    vendors v
        LEFT JOIN
    invoices i ON v.vendor_id = i.vendor_id
WHERE
    i.vendor_id IS NULL
ORDER BY v.vendor_id;

-- query with a subquery in WHERE condition
select invoice_number, invoice_date,
	invoice_total - payment_total - credit_total
	AS balance_due
FROM invoices
WHERE invoice_total - payment_total - credit_total > 0;

-- A query that uses ALL
SELECT 
    vendor_name, invoice_number, invoice_total
FROM
    invoices i
        JOIN
    vendors v ON i.vendor_id = v.vendor_id
WHERE
    invoice_total > ALL (SELECT 
            invoice_total
        FROM
            invoices
        WHERE
            vendor_id = 34)
ORDER BY vendor_name;

-- subquery that uses EXISTS operator
SELECT 
    account_number, account_description
FROM
    general_ledger_accounts gl
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            invoice_line_items
        WHERE
            account_number = gl.account_number)
ORDER BY account_number;

-- pratice

select vendor_id, vendor_name, vendor_state
from vendors v join invoices i ON v.vendor_if = i.vendor_id
where not exists
	(select *
    from invoices
    where vendor_id = vendors.vendor_id);



