-- Yanira Manzano
-- 4/8/2022

use ap;

-- Class Question: Which City has more than one vendor?
SELECT vendor_city
FROM vendors
GROUP BY vendor_city
HAVING COUNT(vendor_city) > 1;

-- A self-join that returns vendors from cities in common with other vendors
SELECT DISTINCT v1.vendor_name, v1.vendor_city,
	v1.vendor_state
FROM vendors v1 JOIN vendors v2
	ON v1.vendor_city = v2.vendor_city AND
		v1.vendor_state = v2.vendor_state AND
		v1.vendor_name <> v2.vendor_name
ORDER BY v1.vendor_state, v1.vendor_city;

-- Class Question: Which City has only one vendor?
SELECT vendor_city
FROM vendors
GROUP BY vendor_city
HAVING COUNT(vendor_city) = 1;

-- Class Question: What is the vendor_id on those cities that has only one vendor?
SELECT vendor_id
FROM vendors
WHERE vendor_city in
	(SELECT vendor_city
		FROM vendors
		GROUP BY vendor_city, vendor_id
		HAVING COUNT(vendor_city) = 1);
        
SELECT t1.vendor_id, t1.vendor_city
FROM vendors t1 JOIN (SELECT vendor_city FROM vendors
ORDER BY vendor_city
HAVING count(vendor_city) = 1) t2
ON t1.vendor_city = t2.vendor_city;