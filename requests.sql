--Ресуры необходимые для создания чертежа
SELECT resource_name,
    quantity
FROM resources_for_items
WHERE item = 'Mirage Chassis Blueprint';


--Активные лоты продавца
SELECT item,
    date_put,
    price_piece,
    quantity,
    rank
FROM active_lots
WHERE seller = 'RusVS'
ORDER BY date_put;


--Ресурсы, которые можно найти на планете
SELECT resource_name
FROM resources
WHERE location_planet = 'Earth';


--Продавцы репутация которых выше определенного значения
SELECT seller_nickname,
    reputation
FROM sellers
WHERE reputation > 10
ORDER BY reputation DESC;


--Топ продавцов по заработку
SELECT seller_nickname,
    SUM(price) AS total_price
FROM sellers
    JOIN lots_history ON sellers.seller_nickname = lots_history.seller
GROUP BY seller_nickname
ORDER BY total_price DESC;

--Лоты на предмет в порядке приоритета для покупателя (сортировка сначала по статусу продавца, потом по цене)
SELECT sellers.seller_nickname,
    sellers.seller_status,
    active_lots.price_piece,
    active_lots.quantity,
    active_lots.rank
FROM active_lots
    JOIN sellers ON active_lots.seller = sellers.seller_nickname
WHERE active_lots.item = 'Ayr'
ORDER BY CASE
        WHEN sellers.seller_status = 'Online in game' THEN 1
        WHEN sellers.seller_status = 'Online' THEN 2
        ELSE 3
    END,
    active_lots.price_piece;


--Продавцы у которых заработок выше среднего
SELECT seller,
    SUM(price) AS total_sales
FROM lots_history
GROUP BY seller
HAVING SUM(price) > (
        SELECT AVG(total_sales)
        FROM (
                SELECT seller,
                    SUM(price) AS total_sales
                FROM lots_history
                GROUP BY seller
            ) AS seller_sales_average
    );



--Среднюю цена, максимальную цена, минимальную цена и кол-во проданных предметов в выбранный день
SELECT item,
    ROUND(AVG(price), 2) AS avg_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price,
    COUNT(*) AS num_sales
FROM lots_history
WHERE DATE(sale_date) = '2024-04-10'
GROUP BY item;


--Среднюю цена предмета по дням
SELECT DATE_TRUNC('day', sale_date)::date AS date,
    ROUND(AVG(price), 2) AS average_price
FROM lots_history
WHERE sale_date BETWEEN '2024-04-01' AND '2024-04-12'
    AND item = 'Saryn Chassis Blueprint'
GROUP BY date
ORDER BY date;


--Средную цена каждой категории предметов и кол-во лотов 
SELECT items_categories.category_name,
    COUNT(active_lots.id) AS number_of_lots,
    AVG(active_lots.price_piece) AS average_price
FROM items_categories
    INNER JOIN items ON items_categories.category_name = items.category
    INNER JOIN active_lots ON items.item_name = active_lots.item
GROUP BY items_categories.category_name;

