/*
P0LC1
Nama: Nabilah Putri Intaka
Batch: RMT-003
*/

-- Nomor 1
SELECT DATE(created_at) as tanggal, COUNT(*) as jumlah_transaksi
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY tanggal
ORDER BY tanggal ASC;

-- Nomor 2
SELECT status, COUNT(*) as jumlah_pengiriman
FROM `bigquery-public-data.thelook_ecommerce.order_items` 
WHERE created_at BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY status
ORDER BY jumlah_pengiriman DESC;

-- Nomor 3
SELECT country, COUNT(DISTINCT id) as jumlah_pembeli
FROM `bigquery-public-data.thelook_ecommerce.users`
WHERE created_at BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY country
ORDER BY jumlah_pembeli;

-- Nomor 4
SELECT p.brand, COUNT(*) as total_pembelian
FROM `bigquery-public-data.thelook_ecommerce.order_items` as o
INNER JOIN `bigquery-public-data.thelook_ecommerce.users` as u ON o.user_id = u.id
INNER JOIN `bigquery-public-data.thelook_ecommerce.products` as p ON o.product_id = p.id
WHERE
u.gender = 'F' AND 
o.created_at BETWEEN '2023-12-01' AND '2023-12-31'
GROUP BY p.brand
ORDER BY total_pembelian DESC
LIMIT 1;

-- Nomor 5
SELECT 
EXTRACT(MONTH from created_at) as bulan, 
COUNT(order_id) / COUNT(DISTINCT EXTRACT(YEAR FROM created_at)) as avg_transaksi
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY bulan
ORDER BY avg_transaksi DESC
LIMIT 1;

-- Nomor 6
SELECT user_id, COUNT(*) as total_transaksi
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE created_at BETWEEN '2023-04-02' AND '2023-06-30'
GROUP BY user_id
ORDER BY total_transaksi DESC;

-- Nomor 7
SELECT AVG(DATE_DIFF(shipped_at, created_at, DAY)) as avg_handle,
AVG(DATE_DIFF(delivered_at, shipped_at, DAY)) as avg_pengiriman
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE created_at BETWEEN '2024-01-01' AND '2024-06-30';

-- Nomor 8
SELECT SUM(0.1 * (p.retail_price - p.cost)) as total_komisi
FROM `bigquery-public-data.thelook_ecommerce.order_items` as o
INNER JOIN `bigquery-public-data.thelook_ecommerce.products` as p on o.product_id = p.id
WHERE o.status = 'Complete' AND
o.created_at BETWEEN '2024-01-01' AND '2024-03-31';

