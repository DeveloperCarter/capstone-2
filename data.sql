\c NNC
DROP TABLE users;
CREATE TABLE users (
    username TEXT PRIMARY KEY,
    password TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    is_admin BOOLEAN NOT NULL
);

CREATE TABLE articles (
    article_id SERIAL PRIMARY KEY,
    title TEXT,
    company_name TEXT,
    img TEXT,
    description TEXT,
    original_url TEXT,
    content TEXT,
    author TEXT
);

CREATE TABLE home_articles (
    article_id SERIAL PRIMARY KEY,
    title TEXT,
    company_name TEXT,
    img TEXT,
    description TEXT,
    original_url TEXT,
    content TEXT,
    author TEXT
);

CREATE TABLE business_articles (
    article_id SERIAL PRIMARY KEY,
    title TEXT,
    company_name TEXT,
    img TEXT,
    description TEXT,
    original_url TEXT,
    content TEXT,
    author TEXT
);

CREATE TABLE science_articles (
    article_id SERIAL PRIMARY KEY,
    title TEXT,
    company_name TEXT,
    img TEXT,
    description TEXT,
    original_url TEXT,
    content TEXT,
    author TEXT
);

CREATE TABLE sports_articles (
    article_id SERIAL PRIMARY KEY,
    title TEXT,
    company_name TEXT,
    img TEXT,
    description TEXT,
    original_url TEXT,
    content TEXT,
    author TEXT
);

CREATE TABLE tech_articles (
    article_id SERIAL PRIMARY KEY,
    title TEXT,
    company_name TEXT,
    img TEXT,
    description TEXT,
    original_url TEXT,
    content TEXT,
    author TEXT
);

CREATE TABLE health_articles (
    article_id SERIAL PRIMARY KEY,
    title TEXT,
    company_name TEXT,
    img TEXT,
    description TEXT,
    original_url TEXT,
    content TEXT,
    author TEXT
);