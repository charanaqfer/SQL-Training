use intern_rcharankumar;

CREATE table comments(
comment_id int primary key,
comment_text text,
user_id int ,
photo_id int,
created_at timestamp
);
-- truncate table comments;

LOAD DATA LOCAL INFILE '/Users/charankumarrampelli/Downloads/archive/comments.csv'
INTO TABLE comments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (`comment_id`,`comment_text`,`user_id`,`photo_id`,`created_at`);

CREATE table follows(
follower_id int ,
followee_id int,
created_at timestamp
);
-- drop table follows
LOAD DATA LOCAL INFILE '/Users/charankumarrampelli/Downloads/archive/follows.csv'
INTO TABLE follows
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (`follower_id`,`followee_id`,`created_at`) ;

CREATE table likes(
user_id int ,
photo_id int,
created_at timestamp
);

LOAD DATA LOCAL INFILE '/Users/charankumarrampelli/Downloads/archive/likes.csv'
INTO TABLE likes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS  ;

CREATE table photo_tags(
photo_id int,
tag_id int
);

LOAD DATA LOCAL INFILE '/Users/charankumarrampelli/Downloads/archive/photo_tags.csv'
INTO TABLE photo_tags
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS  ;

CREATE table photos(
photo_id int primary key,
image_url varchar(1000),
user_id int,
created_at timestamp
);

LOAD DATA LOCAL INFILE '/Users/charankumarrampelli/Downloads/archive/photos.csv'
INTO TABLE photos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS  ;

CREATE table tags(
id int primary key,
tag_name varchar(1000),
created_at timestamp
);

LOAD DATA LOCAL INFILE '/Users/charankumarrampelli/Downloads/archive/tags.csv'
INTO TABLE tags
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS  ;

CREATE table users(
user_id int primary key,
username varchar(1000),
created_at timestamp
);

LOAD DATA LOCAL INFILE '/Users/charankumarrampelli/Downloads/archive/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS  ;

select count(*) from intern_rcharankumar.comments;
select count(*) from intern_rcharankumar.follows;
select count(*) from intern_rcharankumar.likes;
select count(*) from intern_rcharankumar.photos;
select count(*) from intern_rcharankumar.photo_tags;
select count(*) from intern_rcharankumar.tags;
select count(*) from intern_rcharankumar.users;

