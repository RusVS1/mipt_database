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

SELECT get_paste(131);
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

--CALL bying_lot(133);


--Я не придумал еще одну интересную функцию, поэтому написал удаление базы данных
CREATE OR REPLACE PROCEDURE drop_database() AS $$
BEGIN
    EXECUTE 'DROP INDEX IF EXISTS idx_active_lots_seller';
    EXECUTE 'DROP INDEX IF EXISTS idx_active_lots_item';
    EXECUTE 'DROP INDEX IF EXISTS idx_lots_history_seller';
    EXECUTE 'DROP INDEX IF EXISTS idx_lots_history_item';
    EXECUTE 'DROP INDEX IF EXISTS idx_category';

    EXECUTE 'DROP TABLE IF EXISTS items_categories CASCADE';
    EXECUTE 'DROP TABLE IF EXISTS resources CASCADE';
    EXECUTE 'DROP TABLE IF EXISTS items CASCADE';
    EXECUTE 'DROP TABLE IF EXISTS resources_for_items CASCADE';
    EXECUTE 'DROP TABLE IF EXISTS sellers CASCADE';
    EXECUTE 'DROP TABLE IF EXISTS active_lots CASCADE';
    EXECUTE 'DROP TABLE IF EXISTS lots_history CASCADE';

    EXECUTE 'DROP VIEW IF EXISTS seller_info';
    EXECUTE 'DROP VIEW IF EXISTS item_creation_time';
    EXECUTE 'DROP VIEW IF EXISTS item_resources';
    EXECUTE 'DROP VIEW IF EXISTS priority_active_lots';
    EXECUTE 'DROP VIEW IF EXISTS orted_lots_history';


    EXECUTE 'DROP FUNCTION IF EXISTS get_paste';
    EXECUTE 'DROP PROCEDURE IF EXISTS bying_lot';
    EXECUTE 'DROP PROCEDURE IF EXISTS drop_database';
END;
$$ LANGUAGE plpgsql;

CALL drop_database();

