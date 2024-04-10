CREATE TABLE IF NOT EXISTS items_categories (
    category_name VARCHAR(64) PRIMARY KEY,
    features VARCHAR(1024) NOT NULL
);

CREATE TABLE IF NOT EXISTS items (
    item_name VARCHAR(256) PRIMARY KEY,
    category VARCHAR(64) REFERENCES items_categories(category_name),
    creation_time TIME,
    create_rank SMALLINT NULL CHECK(mastery_rank >= 0 AND mastery_rank <= 34) OR NULL,
    rarity VARCHAR(64) NOT NULL,
    trade_tax INTEGER CHECK(trade_tax > 0)
);

CREATE TABLE IF NOT EXISTS resources (
    resource_name VARCHAR(64) PRIMARY KEY,
    location_planet VARCHAR(64) NOT NULL
);

CREATE TABLE IF NOT EXISTS resources_for_items (
    id SERIAL PRIMARY KEY,
    item VARCHAR(256) REFERENCES items(item_name),
    resource_name VARCHAR(64) REFERENCES resources(resource_name),
    quantity INTEGER CHECK(quantity > 0)
);

CREATE TABLE IF NOT EXISTS sellers (
    seller_nickname VARCHAR(64) PRIMARY KEY,
    seller_status VARCHAR(16) NOT NULL,
    mastery_rank SMALLINT CHECK(mastery_rank >= 2 AND mastery_rank <= 34),
    reputation INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS active_lots (
    id SERIAL PRIMARY KEY,
    seller VARCHAR(64) REFERENCES sellers(seller_nickname),
    item VARCHAR(256) REFERENCES items(item_name),
    date_put TIMESTAMP NOT NULL,
    price_piece INTEGER CHECK(price_piece > 0),
    quantity INTEGER CHECK(quantity > 0),
    rank SMALLINT
);

CREATE TABLE IF NOT EXISTS lots_history (
    id SERIAL PRIMARY KEY,
    seller VARCHAR(64) REFERENCES sellers(seller_nickname),
    item VARCHAR(256) REFERENCES items(item_name),
    date_put TIMESTAMP NOT NULL,
    sale_date TIMESTAMP NOT NULL,
    price INTEGER CHECK(price > 0),
    rank SMALLINT
);
