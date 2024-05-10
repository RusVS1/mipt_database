CREATE INDEX idx_active_lots_seller_date_put ON active_lots (seller, date_put);
CREATE INDEX idx_active_lots_item_date_put ON active_lots (item, date_put);

CREATE INDEX idx_lots_history_seller_sale_date ON lots_history (seller, sale_date);
CREATE INDEX idx_lots_history_item_sale_date ON lots_history (item, sale_date);


--DROP INDEX IF EXISTS idx_category;