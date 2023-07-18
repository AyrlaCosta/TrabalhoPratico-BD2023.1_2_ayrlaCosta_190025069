IF NOT EXISTS CREATE TABLE user(
    id INTEGER NOT NULL,
	email VARCHAR(150), 
	password VARCHAR(150), 
	name VARCHAR(150), 
    course VARCHAR(150),
	PRIMARY KEY (id)
)

CREATE TABLE note(
    id_number INTEGER NOT NULL,
    semester VARCHAR(6),
    department VARCHAR(150),
    subject VARCHAR(150),
    teacher VARCHAR(150),
    rating INTEGER(1),
    note VARCHAR(1000)
)