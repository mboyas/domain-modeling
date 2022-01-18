-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS users
DROP TABLE IF EXISTS posts
DROP TABLE IF EXISTS likes
DROP TABLE IF EXISTS comments
DROP TABLE IF EXISTS followers

-- CREATE TABLES
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  image_url TEXT,
  user_id INTEGER
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER
  post_id INTEGER
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  comment TEXT
  user_id INTEGER
  post_id INTEGER
);

CREATE TABLE followers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  follower_id INTEGER
  user_id INTEGER
);
