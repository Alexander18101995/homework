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
(1,  2,  'Com',    '01:36:11'),
(2,  1,  'Kri',    '02:34:12'),
(3,  3,  'Kir',    '03:00:23'),
(4,  4,  'Eln',    '02:55:45'),
(5,  2,  'Pars',   '01:03:23'),
(6,  3,  'My sun', '02:43:11'),
(7,  1,  'Dad',    '03:51:11'),
(8,  7,  'Prek',   '02:46:21'),
(9,  4,  'Kitch',  '02:31:54'),
(10, 5,  'Itchen', '01:59:45'),
(11, 2,  'Pro',    '02:53:23'),
(12, 8,  'Svo',    '01:45:34'),
(13, 7,  'Dmo',    '02:43:56'),
(14, 6,  'Vnk',    '01:45:23'),
(15, 5,  'Zhuk',   '02:32:34');

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

insert into artist_genre (artist_genre_id,artist_id, genre_id)
values 
(1,1,1),
(2,2,2),
(3,3,5),
(4,4,5),
(5,5,2),
(6,6,1),
(7,7,4),
(8,8,3)

insert into artist_albums (artist_albums_id,artist_id, albums_id)
values 
(1,1,1),
(2,2,2),
(3,3,5),
(4,4,5),
(5,5,2),
(6,6,1),
(7,7,4),
(8,8,3)

insert into Tracks_Collection ( Tracks_Collection_id,Track_id,Collection_id)
values 
(1,1,1),
(2,2,2),
(3,5,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,7),
(10,10,6),
(11,11,5),
(12,12,4),
(13,13,3),
(14,14,2),
(15,15,1)

