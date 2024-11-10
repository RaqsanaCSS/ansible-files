use ansible;

create table if not exists users (
	id int not null primary key auto_increment,
    username text not null,
    email text not null,
    password text not null
);
CREATE TABLE if not exists tasks (
    id INT not null primary key auto_increment,
    title varchar(255) not null,
    description text not null,
	owner_id int not null,
    FOREIGN KEY(owner_id) 
        REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);