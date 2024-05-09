CREATE INDEX idx_active_lots_seller ON active_lots (seller);
CREATE INDEX idx_active_lots_item ON active_lots (item);

CREATE INDEX idx_lots_history_seller ON lots_history (seller);
CREATE INDEX idx_lots_history_item ON lots_history (item);

CREATE INDEX idx_category ON items (category);


--DROP INDEX IF EXISTS idx_category;