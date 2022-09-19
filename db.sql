CREATE DATABASE core_v1;

CREATE TABLE posts(
  post_id SERIAL PRIMARY KEY,
  location VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE comments(
  comment_id SERIAL PRIMARY KEY,
  content VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE reviews(
  review_id SERIAL PRIMARY KEY,
  content VARCHAR(255) NOT NULL,
  score VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);
