
CREATE DATABASE greatbeachfinder;

CREATE TABLE  beaches (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  location VARCHAR(100),
  image_url VARCHAR(400)
);

INSERT INTO beaches (name, location, image_url) values('nudey beach', 'Fitzroy Island', 'http://www.traveller.com.au/content/dam/images/h/0/8/2/v/r/image.gallery.galleryLandscape.620x414.h082uu.png/1513817398817.jpg');

INSERT INTO beaches (name, location, image_url) values('horrocks beach', 'Perth WA', 'https://images.perthnow.com.au/publication/B88697078Z/1513816888898_GIH1COHN4.3-1.jpg?imwidth=668&impolicy=pn_v1');

INSERT INTO beaches (name, location, image_url) values('dreamtime beach', 'Tweed Heads NSW', 'https://cdn.shopify.com/s/files/1/0382/5249/files/fingal-head-northern-end_1024x1024.jpg?v=1494050792');


CREATE TABLE ratings (
  id SERIAL4 PRIMARY KEY,
  overall INTEGER,
  surf INTEGER,
  family INTEGER,
  pets INTEGER,
  review TEXT NOT NULL, 
  beaches_id INTEGER NOT NULL,
  FOREIGN KEY (beaches_id) REFERENCES beaches (id) ON DELETE RESTRICT
 );



 

