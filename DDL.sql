CREATE TABLE IF NOT EXISTS items_categories (
    category_name VARCHAR(64) PRIMARY KEY,
    features VARCHAR(1024) NOT NULL
);

CREATE TABLE IF NOT EXISTS resources (
    resource_name VARCHAR(64) PRIMARY KEY,
    location_planet VARCHAR(64) NOT NULL
);

CREATE TABLE IF NOT EXISTS items (
    item_name VARCHAR(256) PRIMARY KEY,
    category VARCHAR(64), 
    creation_time INTERVAL,
    create_rank SMALLINT NULL CHECK(create_rank >= 0 AND create_rank <= 34),
    rarity VARCHAR(64) NOT NULL,
    FOREIGN KEY (category) REFERENCES items_categories(category_name) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS resources_for_items (
    id SERIAL PRIMARY KEY,
    item VARCHAR(256),
    resource_name VARCHAR(64),
    quantity INTEGER NOT NULL CHECK(quantity > 0),
    FOREIGN KEY (item) REFERENCES items(item_name) ON DELETE CASCADE,
    FOREIGN KEY (resource_name) REFERENCES resources(resource_name)
);

CREATE TABLE IF NOT EXISTS sellers (
    seller_nickname VARCHAR(64) PRIMARY KEY,
    seller_status VARCHAR(16) NOT NULL,
    mastery_rank SMALLINT NOT NULL CHECK(mastery_rank >= 2 AND mastery_rank <= 34),
    reputation INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS active_lots (
    id SERIAL PRIMARY KEY,
    seller VARCHAR(64),
    item VARCHAR(256),
    date_put TIMESTAMP NOT NULL,
    price_piece INTEGER NOT NULL CHECK(price_piece > 0),
    quantity INTEGER NOT NULL CHECK(quantity > 0),
    rank SMALLINT,
    trade_tax INTEGER CHECK(trade_tax > 0),
    FOREIGN KEY (seller) REFERENCES sellers(seller_nickname) ON DELETE CASCADE,
    FOREIGN KEY (item) REFERENCES items(item_name) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS lots_history (
    id SERIAL PRIMARY KEY,
    seller VARCHAR(64),
    item VARCHAR(256),
    date_put TIMESTAMP NOT NULL,
    sale_date TIMESTAMP NOT NULL,
    price INTEGER NOT NULL CHECK(price > 0),
    rank SMALLINT,
    FOREIGN KEY (seller) REFERENCES sellers(seller_nickname) ON DELETE CASCADE,
    FOREIGN KEY (item) REFERENCES items(item_name) ON DELETE CASCADE
);
