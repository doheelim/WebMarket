create table if not exists product(
	p_id varchar(20) not null,
	p_name varchar(20),
	p_unitPrice INTEGER,
	p_description TEXT,
	p_category varchar(20),
	p_manufacturer varchar(20),
	p_unitsInStock long,
	p_condition varchar(20),
	p_fileName varchar(20),
	PRIMARY KEY (p_id)
)default charset = utf8;

