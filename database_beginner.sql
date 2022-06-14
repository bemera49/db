CREATE TABLE users( 
    id int(255) auto_increment not null,
    name varchar(255) not null,
    surname varchar(255) null,
    email varchar(255) not null,
    password varchar(255) not null,
    fecha date not null,
CONSTRAINT pk_users PRIMARY KEY(id),
CONSTRAINT uq_email UNIQUE(email)  
)ENGINE=InnoDB;

CREATE TABLE category(
    id int(255) auto_increment not null,
    name varchar(255) not null,
CONSTRAINT pk_category PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE post(
    id int(255) auto_increment not null,
    user_id int not null,
    category_id int not null, 
    title varchar(255) not null,
    description MEDIUMTEXT,
    fecha date not null,
CONSTRAINT pk_post PRIMARY KEY(id),
CONSTRAINT fk_post_user FOREIGN KEY(user_id) REFERENCES users(id),
#se puede poner otra restrinción como lo son el cascade, no es recomendable#
CONSTRAINT fk_post_category FOREIGN KEY(category_id) REFERENCES category(id) ON DELETE CASCADE     
)ENGINE=InnoDB;

