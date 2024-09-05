--функция для создания пасты дял покупки предмета
CREATE OR REPLACE FUNCTION get_paste(lot INTEGER) RETURNS VARCHAR(512) AS $$
DECLARE 
    paste VARCHAR(512);
BEGIN
    SELECT '/w ' || seller || ' Hi! I want to buy: "' || item || COALESCE(' (rank ' || rank::TEXT || ')', '') || '" for ' || price_piece || ' platinum. (warframe.market)' 
    INTO paste
    FROM active_lots
    WHERE id = lot;
    RETURN paste;
END;
$$ LANGUAGE plpgsql;

--SELECT get_paste(131);
--SELECT get_paste(56);



--процедура для перемещения лота из активного в историю
CREATE OR REPLACE PROCEDURE bying_lot(lot INTEGER) AS $$
DECLARE 
    history_seller VARCHAR(64);
    history_item VARCHAR(256);
    history_price_piece INTEGER;
    history_quantity INTEGER;
    history_rank SMALLINT;
    history_date_put TIMESTAMP;
BEGIN
    SELECT seller, item, price_piece, quantity, rank, date_put
    INTO history_seller, history_item, history_price_piece, history_quantity, history_rank, history_date_put
    FROM active_lots
    WHERE id = lot;
    
    IF history_quantity = 1 THEN
        DELETE FROM active_lots
        WHERE id = lot;
    ELSE
        UPDATE active_lots
        SET quantity = history_quantity - 1
        WHERE id = lot;
    END IF;
    INSERT INTO lots_history (seller, item, date_put, sale_date, price, rank)
    VALUES (
        history_seller,
        history_item,
        history_date_put,
        DATE_TRUNC('second', CURRENT_TIMESTAMP),
        history_price_piece,
        history_rank
    );
END;
$$ LANGUAGE plpgsql;

--CALL bying_lot(149);


--Нахождение сета по ключевому начальному слову и его минимальной цены
CREATE OR REPLACE FUNCTION find_set(keyword VARCHAR(256))
RETURNS TABLE (item_name VARCHAR(256), min_price INTEGER, lot_id INTEGER) AS $$
BEGIN
    RETURN QUERY
    SELECT items.item_name, MIN(active_lots.price_piece) AS min_price, MIN(active_lots.id) AS lot_id
    FROM items
    LEFT JOIN active_lots ON items.item_name = active_lots.item
    LEFT JOIN sellers ON active_lots.seller = sellers.seller_nickname
    WHERE items.item_name LIKE keyword || '%'
      AND sellers.seller_status IN ('Online in game', 'Online')
    GROUP BY items.item_name;
END;
$$ LANGUAGE 'plpgsql';

--SELECT * FROM find_set('Saryn');



--DROP FUNCTION IF EXISTS find_set;
