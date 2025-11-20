-- Titles table: movies and TV shows
CREATE TABLE Titles (
    title_id INT PRIMARY KEY,
    title_name VARCHAR(255),
    type VARCHAR(50),              -- e.g. 'Movie' or 'TV Show'
    release_year INT,
    season_count INT,              -- for TV shows
    duration_minutes INT,
    rating VARCHAR(50),            -- e.g. PG-13, TV-MA, etc.
    country VARCHAR(100),
    description TEXT
);

-- Genres: because a title can have many genres
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(100)
);

-- Link table between Titles and Genres (many-to-many)
CREATE TABLE TitleGenres (
    title_id INT,
    genre_id INT,
    PRIMARY KEY (title_id, genre_id),
    FOREIGN KEY (title_id) REFERENCES Titles(title_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

-- People: Actors / Directors
CREATE TABLE People (
    person_id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Role table: mapping people to titles (actor, director, etc.)
CREATE TABLE TitlePeople (
    title_id INT,
    person_id INT,
    role VARCHAR(50),   -- e.g. 'Actor', 'Director'
    character_name VARCHAR(255),  -- for actors
    PRIMARY KEY (title_id, person_id, role),
    FOREIGN KEY (title_id) REFERENCES Titles(title_id),
    FOREIGN KEY (person_id) REFERENCES People(person_id)
);

-- Ratings / Reviews table (if your dataset has ratings)
CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY,
    title_id INT,
    vote_count INT,
    average_rating DECIMAL(3,2),
    FOREIGN KEY (title_id) REFERENCES Titles(title_id)
);
