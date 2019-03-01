DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS route;

CREATE TABLE groups (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  surname TEXT NOT NULL,
  age INTEGER NOT NULL,
  student BOOLEAN NOT NULL,
  group_id INTEGER,
  FOREIGN KEY (group_id) REFERENCES groups (id)
);

CREATE TABLE route (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  route_date DATE NOT NULL DEFAULT CURRENT_DATE,
  total_km FLOAT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id)
);