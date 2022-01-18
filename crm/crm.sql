-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts
DROP TABLE IF EXISTS salesperson
DROP TABLE IF EXISTS companies
DROP TABLE IF EXISTS industries
DROP TABLE IF EXISTS activities

-- CREATE TABLES
CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  title TEXT,
  email TEXT,
  phone_number TEXT,
  company_id INTEGER,
  salesperson_id INTEGER
);

CREATE TABLE salesperson (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  industry_id INTEGER
);

CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type TEXT,
  date_date DATETIME
  notes TEXT,
  contact_id INTEGER,
  salesperson_id INTEGER,
);