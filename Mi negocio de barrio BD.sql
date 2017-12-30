-- Daniel Mendoza Caro

CREATE TABLE USER_LOGIN(
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(11) REFERENCES USER(RUT),
    password VARCHAR(20) NOT NULL,
    creation_date DATE NOT NULL,
    last_login DATE
);

CREATE TABLE USER(
    rut VARCHAR(11) NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    local VARCHAR(255) NOT NULL, --ID LOCAL // 0 if he has none
    birthday DATE NOT NULL,
    phone INT
);

CREATE TABLE LOCAL(
    id_local INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    type INT NOT NULL, -- 1/FOOD 2/VEGETABLES 3/SERVICE 4/STORE 5/SELL-BUY
    cajavecina INT NOT NULL, -- 1 YES // 0 NO
    cargacelular INT NOT NULL,
    cargabip INT NOT NULL,
    sencillito INT NOT NULL,

);

CREATE TABLE LOCATION(
    id_local INT REFERENCES LOCAL(id_local),
    latitude VARCHAR(255), --unknow**
    longitude VARCHAR(255) --unknow**
);

CREATE TABLE INVENTORY(
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_local INT REFERENCES LOCAL(id_local),
    category VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    stock INT NOT NULL, -- 0 NO / 1 YES

);

CREATE TABLE VALORATION(
    id_user INT REFERENCES LOGIN(id_user),
    local ----
    stars INT NOT NULL, -- until 5 min 1 
    valoration_date DATE
);

CREATE TABLE VIEW(
    id_user INT REFERENCES LOGIN(id_user),
    id_local INT REFERENCES LOCAL(id_local),
    view_date DATE
);


