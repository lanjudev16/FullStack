CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) not NULL
);
CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES "user"(id)
);
INSERT INTO  "user"(username) VALUES('Md Lanju Mia','Ayesha','Gazi Siddqur Rahman'); 
