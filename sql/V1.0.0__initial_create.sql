CREATE TABLE users (
  id          INT NOT NULL AUTO_INCREMENT,
  login_id    VARCHAR(100) NOT NULL,
  password    VARCHAR(100) NOT NULL,
  name        VARCHAR(100) NOT NULL,
  created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

CREATE TABLE tweet (
  id          INT NOT NULL AUTO_INCREMENT,
  owner_id    INT NOT NULL,
  content     VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE hash_tag (
  id          INT NOT NULL AUTO_INCREMENT,
  tag         VARCHAR(50) NOT NULL,
  tweet_id    INT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO users(login_id, password, name) VALUES('sample@example.com', '1BCDBCCFF1C3D3AE287905E0850E6AFBB56010276F0A9A52AE1FF7874EF35726', 'Kazuhisa Kawashima')
