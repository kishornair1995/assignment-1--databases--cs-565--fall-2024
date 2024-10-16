-- Get the name of the store and its URL where any spices were purchased.
SELECT DISTINCT s.store_name, sa.url_address
FROM purchasedspices ps
JOIN stores s ON ps.store_id = s.store_id
JOIN Store_address sa ON s.store_id = sa.store_id;


-- Get the name of the store and its URL where spices were purchased, including their barcode.
SELECT ps.spice_name, ps.barcode, s.store_name, sa.url_address
FROM purchasedspices ps
JOIN stores s ON ps.store_id = s.store_id
JOIN Store_address sa ON s.store_id = sa.store_id;


-- Get stores who only have an online address.
SELECT s.store_name
FROM stores s
JOIN Store_address sa ON s.store_id = sa.store_id
GROUP BY s.store_id
HAVING COUNT(CASE WHEN sa.physical_address IS NULL THEN 1 END) = COUNT(*);


-- Get stores who have an online and a physical address.
SELECT store_name, url_address, physical_address
FROM Store_address
WHERE physical_address IS NOT NULL;


-- Get spices whose names are also brands. For example, Fresh Direct is a store that also makes spices.
SELECT DISTINCT ps.spice_name
FROM purchasedspices ps
JOIN stores s ON ps.store_id = s.store_id
WHERE ps.spice_name = s.store_name;


-- Get spices whose names contain “cinnamon”.
SELECT spice_name
FROM purchasedspices
WHERE spice_name LIKE '%cinnamon%';


-- Get the brand name of the Sumac spice and the name and URL of the store where it was purchased.
SELECT ps.spice_name, s.store_name, sa.url_address
FROM purchasedspices ps
JOIN stores s ON ps.store_id = s.store_id
JOIN Store_address sa ON s.store_id = sa.store_id
WHERE ps.spice_name = 'Sumac';

