CREATE TABLE IF NOT EXISTS users (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,  -- Make email unique to prevent duplicates
  username VARCHAR(255) NOT NULL UNIQUE, -- Make username unique to prevent duplicates
  password VARCHAR(255) NOT NULL,  -- Add password field for secure login (consider hashing passwords)
  home VARCHAR(255) DEFAULT NULL,  -- Optional field for user's website/portfolio link
  user_type ENUM('client', 'freelancer') NOT NULL DEFAULT 'client'  -- Add field to specify user type (client or freelancer)
);


CREATE TABLE IF NOT EXISTS categories (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(255) NOT NULL UNIQUE  -- Make category name unique to avoid duplicates
);


CREATE TABLE IF NOT EXISTS user_categories (
  user_id INT(6) UNSIGNED NOT NULL,
  category_id INT(6) UNSIGNED NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO categories (category_name) VALUES ('Web Development');
INSERT INTO categories (category_name) VALUES ('App Development');
INSERT INTO categories (category_name) VALUES ('Game Development');
INSERT INTO categories (category_name) VALUES ('Graphic Design');
INSERT INTO categories (category_name) VALUES ('Content Writing');
INSERT INTO categories (category_name) VALUES ('UI/UX Design');
