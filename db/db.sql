drop database if exists nighthawk;

CREATE DATABASE nighthawk ENCODING 'UTF8';

\c nighthawk

CREATE TABLE users (
    id        SERIAL        PRIMARY KEY,
    name      VARCHAR(100)  NOT     NULL,
    lastname  VARCHAR(100)  NOT     NULL,
    age       SMALLINT      NOT     NULL,
    borndate  DATE          NOT     NULL,
    available BOOLEAN       DEFAULT TRUE
);

CREATE TABLE account (
    id               SERIAL       PRIMARY KEY,
    user_name        VARCHAR(100) NOT     NULL,
    available        BOOLEAN      NOT     NULL,
    user_id          INT          NOT     NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);
