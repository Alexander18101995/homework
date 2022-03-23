insert into Artist ( Artist_id, Name)
values 
(1,'Alex Kuas'),
(2,'Sasha Has'),
(3,'Dima'),
(4,'Oleg'),
(5,'Kristina'),
(6,'Masha Mur'),
(7,'Sergei'),
(8,'Pasha');

insert into Genre ( Genre_id, Genge_name)
values 
(1,'Rock'),
(2,'Rap'),
(3,'Classic'),
(4,'Electro'),
(5,'Shanson');

insert into Albums ( Albums_id, Albums_name,Years)
values 
(1, 'Comedy',  1980),
(2, 'Kric',    1999),
(3, 'Kirl',    2005),
(4, 'Keln',    2010),
(5, 'Paris',   2012),
(6, 'Sun',     2015),
(7, 'Dad',     2018),
(8, 'Kitchen', 2020);

insert into Tracks ( Tracks_id, Albums_id,Title,Times)
values 
(1,  2,  'Com',    1,36),
(2,  1,  'Kri',    2,34),
(3,  3,  'Kir',    3,00),
(4,  4,  'Eln',    2,55),
(5,  2,  'Pars',   1,03),
(6,  3,  'My sun', 2,43),
(7,  1,  'Dad',    3,51),
(8,  7,  'Prek',   2,46),
(9,  4,  'Kitch',  2,31),
(10, 5,  'Itchen', 1,59),
(11, 2,  'Pro',    2,53),
(12, 8,  'Svo',    1,45),
(13, 7,  'Dmo',    2,43),
(14, 6,  'Vnk',    1,45),
(15, 5,  'Zhuk',   2,32);

insert into Collection ( Collection_id, Collection_name,Years)
values 
(1, 'Moc',   1995),
(2, 'Irk',   1997),
(3, 'Ric',   1998),
(4, 'Nle',   2001),
(5, 'Sirap', 2018),
(6, 'Nus',   2019),
(7, 'Dad',   2019),
(8, 'Ki',    2010),

