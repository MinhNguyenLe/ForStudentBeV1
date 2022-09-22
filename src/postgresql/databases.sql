CREATE DATABASE core_v3;

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
  name VARCHAR(255) UNIQUE NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);
insert into locations (name) values ('DISTRICT_1');
insert into locations (name) values ('DISTRICT_2');
insert into locations (name) values ('DISTRICT_3');
insert into locations (name) values ('DISTRICT_4');
insert into locations (name) values ('DISTRICT_5');

CREATE TABLE shifts(
  _id SERIAL PRIMARY KEY,
  name VARCHAR(255) UNIQUE NOT NULL,
  description VARCHAR(255) NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);
insert into shifts (name, description) values ('SHIFT_1', 'from 6:00 to 12:00');
insert into shifts (name, description) values ('SHIFT_2', 'from 12:00 to 18:00');
insert into shifts (name, description) values ('SHIFT_3', 'from 18:00 to 00:00');
insert into shifts (name, description) values ('SHIFT_4', 'from 00:00 to 6:00');

CREATE TABLE posts(
  _id SERIAL PRIMARY KEY,
  fk_location INT NOT NULL,
  fk_shift INT NOT NULL,
  CONSTRAINT fk_location FOREIGN KEY(fk_location) REFERENCES locations(_id),
  CONSTRAINT fk_shift FOREIGN KEY(fk_shift) REFERENCES shifts(_id),
  description VARCHAR(255) NOT NULL,
  price FLOAT NOT NULL,
  created_at DATE DEFAULT CURRENT_DATE,
  updated_at DATE DEFAULT CURRENT_DATE
);
insert into posts (description,fk_location, fk_shift, price) values ('post 1 example', 1, 1, 100.1);
insert into posts (description,fk_location, fk_shift, price) values ('post 2 example', 2, 2, 22.2);
insert into posts (description,fk_location, fk_shift, price) values ('post 3 example', 3, 3, 333.3);

GRANT ALL PRIVILEGES ON TABLE locations TO minhlee;
GRANT ALL PRIVILEGES ON TABLE locations__id_seq TO minhlee;

GRANT ALL PRIVILEGES ON TABLE shifts TO minhlee;
GRANT ALL PRIVILEGES ON TABLE shifts__id_seq TO minhlee;

GRANT ALL PRIVILEGES ON TABLE posts TO minhlee;
GRANT ALL PRIVILEGES ON TABLE posts__id_seq TO minhlee;

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
