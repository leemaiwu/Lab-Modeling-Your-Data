INSERT INTO users (email, username, password)
VALUES ('laura@yahoo.com', 'leemai', 'password123'),
       ('jack@gmail.com', 'jackattack', 'password123');

INSERT INTO recipes (name, instructions, is_public)
VALUES  ('Caramel', 'Melt sugar over medium heat. Add butter, heavy cream and continue stiring. Remove from heat and add salt', TRUE),
	    ('Caramel Apple', 'Dip apple in homemade melted caramel', TRUE),
		('Steak', 'Pan sear salt and peppered steak in oil.', FALSE);

INSERT INTO ingredients (name)
VALUES  ('apple'),
        ('sugar'),
        ('butter'),
        ('heavy cream'),
        ('butter'),
        ('steak'),
        ('salt'),
        ('pepper'),
        ('olive oil');

INSERT INTO grocery_list (user_id, ing_id)
VALUES  (1, 1),
	    (1, 2),
        (1, 3),
        (1, 4),
        (1, 5),
        (1, 7),
        (2, 6),
        (2, 8),
        (2, 9),
        (2, 7);

INSERT INTO occasion (name, address, date, time, user_id)
VALUES  ('Family Dinner', 'Provo', 'Feb 24', '6:00 PM', 2),
        ('Party', 'Orem', 'Dec 5', '10:00 PM', 1);

INSERT INTO user_recipe (user_id, recipe_id)
VALUES  (1, 1),
        (1, 2),
        (2, 3);

INSERT INTO grocery_ing (groc_id, groc_ing)
VALUES (1, 1),
       (2, 3),
       (2, 1),
       (3, 2),
       (4, 2);

INSERT INTO recipe_ing (recipe_id, quantity, ing_id)
VALUES  ( 1, 1,  2),
        ( 1, .5, 3),
        ( 1, .5, 4),
        ( 1, .5, 5),
        ( 1, 0.25, 7),
        ( 2, 1, 1),
        ( 2, 1, 10),
        ( 3, 2, 6),
        ( 3, 0.25, 7),
        ( 3, 0.25, 8),
        ( 3, 0.25, 9);

INSERT INTO occ_recipe (user_id, occ_id, recipe_id)
VALUES	(1, 2, 2),
		(2, 1, 3),
        (2, 1, 2);
