-- Yanira Manzano
-- 4/6/2022

use ap;
SELECT 
    *
FROM
    invoices;

-- An inner join of the Vendors and Invoices tables:
SELECT 
    invoice_number, vendor_name
FROM vendors v INNER JOIN invoices 
	ON v.vendor_id = invoices.vendor_id
ORDER BY invoice_number;

-- Practice
SELECT invoicenumber
FROM line_item li INNER JOIN Invoice 
	ON line_item.productnumber = Invoice.InvoiceNumber
WHERE ProductNumber in 
		select productNumber
        from product
        where productdescription = 'Heather Sweeney
Seminar Live in Dallas on 25-OCT-17'




