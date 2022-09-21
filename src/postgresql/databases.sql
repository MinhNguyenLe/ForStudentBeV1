CREATE DATABASE core_v1;

CREATE TABLE users(
  user_id SERIAL PRIMARY KEY,
  location VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE identities_user(
  identity_user_id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  star VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE profiles(
  profile_id SERIAL PRIMARY KEY,
  full_name VARCHAR(255) NOT NULL,
  user_name VARCHAR(255) UNIQUE NOT NULL,
  schoole VARCHAR(255) NOT NULL,
  codeStudent VARCHAR(255) UNIQUE NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE students(
  student_id SERIAL PRIMARY KEY,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE enterprises(
  enterprise_id SERIAL PRIMARY KEY,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE stars(
  star_id SERIAL PRIMARY KEY,
  star VARCHAR(255) UNIQUE NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE,
);

/* ---------------- */

CREATE TABLE locations(
  _id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE shifts(
  _id SERIAL PRIMARY KEY,
  description VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE posts(
  _id SERIAL PRIMARY KEY,
  CONSTRAINT fk_location FOREIGN KEY(fk_location) REFERENCES locations(_id),
  CONSTRAINT fk_shift FOREIGN KEY(fk_shift) REFERENCES shifts(_id),
  description VARCHAR(255) NOT NULL,
  price FLOAT NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

/* ---------------- */
  
CREATE TABLE comments(
  comment_id SERIAL PRIMARY KEY,
  content VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE work_history(
  work_history_id SERIAL PRIMARY KEY,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE review_work_history(
  review_work_history_id SERIAL PRIMARY KEY,
  content VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);

/* ---------------- GRANT --------------- */

GRANT ALL PRIVILEGES ON TABLE locations TO minhlee;
GRANT ALL PRIVILEGES ON TABLE locations__id_seq TO minhlee;

GRANT ALL PRIVILEGES ON TABLE shifts TO minhlee;
GRANT ALL PRIVILEGES ON TABLE shifts__id_seq TO minhlee;

GRANT ALL PRIVILEGES ON TABLE posts TO minhlee;
GRANT ALL PRIVILEGES ON TABLE posts__id_seq TO minhlee;

/* ---------------- */
