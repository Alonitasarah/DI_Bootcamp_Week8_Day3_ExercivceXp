SELECT name FROM language;

SELECT film.title, film.description, language.name
FROM film
LEFT JOIN language 
ON film.language_id = language.language_id;

SELECT film.title, film.description, language.name
FROM film
RIGHT JOIN language ON film.language_id = language.language_id;


CREATE TABLE new_film (
id SERIAL PRIMARY KEY, 
name VARCHAR(255) NOT NULL
);

INSERT INTO new_film (name) VALUES ('Jack Bauer'),('DUCOBU');

CREATE TABLE customer_review (
    review_id SERIAL,
    film_id INT,
    language_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    score INT NOT NULL,
    review_text TEXT NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(film_id),
	CONSTRAINT fk_film
		FOREIGN KEY(film_id)
		REFERENCES new_film(id) ON DELETE CASCADE,
	UNIQUE (language_id),
	CONSTRAINT fk_language
    FOREIGN KEY (language_id) REFERENCES language(language_id)
);


INSERT INTO customer_review (film_id, language_id, title, score, review_text)
VALUES (1, 1, 'BON FILM', 9, 'jaime ce film');

INSERT INTO customer_review (film_id, language_id, title, score, review_text)
VALUES (2, 2, 'top', 8, 'film trop wahou');
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
