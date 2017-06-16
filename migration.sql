USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL UNIQUE,
    email VARCHAR(240) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    price INT not null,
    category_id int UNSIGNED not NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id) on DELETE CASCADE ,
    FOREIGN KEY (category_id) REFERENCES category(id)  ON DELETE CASCADE

);

CREATE TABLE category (
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    catagory VARCHAR(50),
    PRIMARY KEY (id)
);



USE adlister_db;

TRUNCATE table users;

INSERT into users (username, email, password)
VALUES
    ('nancy', 'nancycycles@mail.com', 'nancy123'),
    ('mike', 'mikesadventures@mail.com', 'mike123'),
    ('georgie', 'georgiefables@mail.com', 'georgie123'),
    ('javier', 'javierfixit@fix.com', 'javier123'),
    ('bill', 'billybonsai@tree.com', 'bill123');

TRUNCATE TABLE ads;

INSERT into ads (user_id, title, description, price, category_id)
VALUES
    (2, 'Rusty Bicylcle', 'A nice old rusty bicycle. Just add oil and u will have a brand new beautiful bike.', 25, 9),
    (1, 'Dreamcast', 'So you like amazing 3d games? Well, then ive got the system just for you. Sega Dreamcast. Another bonus is u can burn pirated games. Rrrrrrrr.', 80, 5),
    (5, 'Church Socks', 'The holiest socks i have ever seen. Perfect for church apparel. and ur twos will be able to breath.', 6, 2),
    (3, 'Running Boots', 'These boots aint made for walking. They are for running. High performance cowboy running boots for sale.', 40, 2),
    (2, 'Possibly Fossils', 'Talk about pricless. These rocks are probably most likely millions of years old. Probably most likely dinosaurs saw these rocks.', 10000, 9),
    (4, 'Half gallon of milk', 'Half gallon of milk in a gallon container. I realized half way through i am lactosent tolerant.', 2, 6),
    (2, 'Ladel', 'Works great for serving soups and gravy. Mmmmm. Pick it up today.', 18, 6),
    (4, 'Briefcase', 'Beautiful leather brifcase. Not sure about the inside because its locked. You can look professional with this one.', 60, 7),
    (1, 'Sanwiches', 'I made them this morning, but then I saw Mcdonalds. Get them while they are fresh.', 4, 7),
    (5, 'Custom Paper machete hat', 'This is a beatiful piece that will have all your artsy friends drooling over ur stylish hat.', 20, 2);

INSERT into category (catagory)
    VALUES ('auto'),
        ('clothing'),
        ('electronics'),
        ('furniture'),
        ('games & toys'),
        ('household'),
        ('other'),
        ('pets');

INSERT into category (catagory) VALUES ('sports & outdoors');
