use desafio4;

CREATE TABLE sega(
    meta_score INT,
    title VARCHAR(100),
    platform VARCHAR(100),
    `date` VARCHAR(12),
    user_score FLOAT,
    `link` VARCHAR(100),
    esrb_rating VARCHAR(10),
    developers VARCHAR(100),
    genres VARCHAR(100)
)

LOAD DATA INFILE 'SegaGames.csv'
INTO TABLE sega
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 

SELECT * FROM sega;