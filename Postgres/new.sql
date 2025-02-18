--insert intigrity
/*
    insertion constraint on insert post
    attempt to insert a post with a user id that does not exits
    insert a post with a valid user id
    attempt to insert a post without a specific a user id
*/
--Delete intrigity
/*
    Delete constraint on delete user
    restrict deletetion ->On delete restrict /on delete no action(default)
    Cascading deletion->ON DELETE CASECADE
    Setting nul ->ON DELETE SET NULL
    Set default ->ON DELETE SET DEFAULT
*/
CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL
);
CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES "user"(id) ON delete set DEFAULT DEFAULT(4)
    --user_id INTEGER REFERENCES "user"(id) ON delete set NULL
    --user_id INTEGER REFERENCES "user"(id) ON delete CASCADE
    --user_id INTEGER REFERENCES "user"(id) ON delete NO Action
);
--insert data
INSERT INTO "user"(username) VALUES('Md Lanju'),('Ayesha Siddiqa'),('Gazi Siddiqur Rahman');
INSERT INTO "user"(username) VALUES('Unkwon Person');
INSERT INTO post (title,user_id) VALUES('insert multiple rows of data',2),('insert multiple rows of data',1),('insert multiple rows of data',3),('insert multiple rows of data',2);
INSERT INTO post (title,user_id) VALUES ('Lorem',NULL);
--select data
SELECT * FROM "user";
SELECT * FROM post;
--inner join
SELECT post.id,title,username FROM post 
INNER JOIN "user" ON post.user_id="user".id;
--lef join 
SELECT * FROM post
LEFT JOIN "user" ON post.user_id="user".id;
--right join
SELECT * FROM post
RIGHT JOIN "user" ON post.user_id="user".id;
--Full join
SELECT * FROM post
FULL JOIN "user" ON post.user_id="user".id;
--cros join
SELECT * FROM post
CROSS JOIN "user";
--natural
SELECT * FROM post
NATURAL JOIN "user";
--delete 
DELETE FROM "user"
WHERE id=3;
--drop table
DROP Table "user";
DROP Table post;