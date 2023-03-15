CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	email VARCHAR NOT NULL UNIQUE,
	username VARCHAR NOT NULL UNIQUE,
	password VARCHAR NOT NULL
);

CREATE TABLE recipes (
	id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL UNIQUE,
	instructions TEXT NOT NULL,
	is_public BOOLEAN NOT NULL
);

CREATE TABLE ingredients (
	id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL
);

CREATE TABLE grocery_list (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(id)
);

CREATE TABLE occasion (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  address VARCHAR NOT NULL,
  date VARCHAR NOT NULL,
  time VARCHAR NOT NULL,
  user_id INT NOT NULL REFERENCES users(id)
);

CREATE TABLE user_recipe (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(id),
  recipe_id INT NOT NULL REFERENCES recipes(id)
);

CREATE TABLE occ_recipe (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(id),
  occ_id INT NOT NULL REFERENCES occasion(id),
  recipe_id INT NOT NULL REFERENCES recipes(id)
);

CREATE TABLE grocery_ing (
  id SERIAL PRIMARY KEY,
  groc_id INT NOT NULL REFERENCES grocery_list(id),
  groc_ing INT NOT NULL REFERENCES ingredients(id)
);

CREATE TABLE recipe_ing (
  id SERIAL PRIMARY KEY,
  recipe_id INT NOT NULL REFERENCES recipes(id),
  quantity FLOAT NOT NULL,
  ing_id INT NOT NULL REFERENCES ingredients(id)
);

