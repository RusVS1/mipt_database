--Репутация и ранг продавцов
CREATE OR REPLACE VIEW seller_info AS
SELECT seller_nickname AS seller,
    mastery_rank AS rank,
    reputation
FROM sellers;


--Время создания предметов
CREATE OR REPLACE VIEW item_creation_time AS
SELECT item_name,
    creation_time
FROM items
WHERE creation_time IS NOT NULL;


--Ресурсы для предметов
CREATE OR REPLACE VIEW item_resources AS
SELECT items.item_name, resources_for_items.resource_name, resources_for_items.quantity AS resource_quantity
FROM items
JOIN resources_for_items ON items.item_name = resources_for_items.item;


--Все лоты по проиоритету
CREATE OR REPLACE VIEW priority_active_lots AS
SELECT active_lots.id,
    active_lots.item,
    sellers.seller_nickname,
    sellers.seller_status,
    active_lots.rank,
    active_lots.price_piece,
    active_lots.quantity
FROM active_lots
JOIN sellers ON active_lots.seller = sellers.seller_nickname
ORDER BY active_lots.item,
    CASE
        WHEN sellers.seller_status = 'Online in game' THEN 1
        WHEN sellers.seller_status = 'Online' THEN 2
        ELSE 3
    END,
    active_lots.price_piece;


--Проданные лоты отсортированные по дате
CREATE OR REPLACE VIEW sorted_lots_history AS
SELECT *
FROM lots_history
ORDER BY sale_date DESC;



--DROP VIEW IF EXISTS priority_active_lots;