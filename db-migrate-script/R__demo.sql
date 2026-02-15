create table demo (id SERIAL primary key, fld1 varchar(50) NOT NULL, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
insert into demo (fld1) values ('abc');
insert into demo (fld1) values ('xyz');
CREATE INDEX idx_demo_fld1 ON demo(fld1);