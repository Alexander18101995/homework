create table Artist
(
  Artist_id int primary key,
  Name varchar (50),
  Genre_id int references Genre(Genre_name)
);

create table Albums
(
  Albums_id int primary key,
  Artist_id int references Artist(Artist_id),
  Album_name varchar (50),
  Years integer not null
);

create table Tracks
(
  Track_id int primary key,
  Albums_id int references Albums(Albums_id),
  Title varchar (50),
  Times time not null
);

create table Genre 
(
  Genre_id int primary key,
  Genre_name varchar(50)
);



