USE adlister_db;

INSERT into users (username, email, password)
    VALUES
      ('nancy', 'nancycycles@mail.com', 'nancy123'),
      ('mike', 'mikesadventures@mail.com', 'mike123'),
      ('georgie', 'georgiefables@mail.com', 'georgie123'),
      ('javier', 'javierfixit@fix.com', 'javier123'),
      ('bill', 'billybonsai@tree.com', 'bill123');


INSERT into ads (user_id, title, description)
    VALUES
      (2, 'Rusty Bicylcle', 'A nice old rusty bicycle. Just add oil and u will have a brand new beautiful bike.'),
      (1, 'Dreamcast', 'So you like amazing 3d games? Well, then ive got the system just for you. Sega Dreamcast. Another bonus is u can burn pirated games. Rrrrrrrr.'),
      (5, 'Church Socks', 'The holiest socks i have ever seen. Perfect for church apparel. and ur twos will be able to breath.'),
      (3, 'Running Boots', 'These boots aint made for walking. They are for running. High performance cowboy running boots for sale.'),
      (2, 'Possibly Fossils', 'Talk about pricless. These rocks are probably most likely millions of years old. Probably most likely dinosaurs saw these rocks.'),
      (4, 'Half gallon of milk', 'Half gallon of milk in a gallon container. I realized half way through i am lactosent tolerant.'),
      (2, 'Ladel', 'Works great for serving soups and gravy. Mmmmm. Pick it up today.'),
      (4, 'Briefcase', 'Beautiful leather brifcase. Not sure about the inside because its locked. You can look professional with this one.'),
      (1, 'Sanwiches', 'I made them this morning, but then I saw Mcdonalds. Get them while they are fresh.'),
      (5, 'Paper machete hat', 'This is a beatiful piece that will have all your artsy friends drooling over ur stylish hat.');