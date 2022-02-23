create table Artist
(
  Artist_id int primary key,
  Name varchar (50),
  Genre_id int not null
);

create table Albums
(
  Artist_id int references Artist(Artist_id),
  Albums_id int not null,
  Album_name varchar (50),
  Years integer not null
);

create table Tracks
(
  Albums_id int references Albums(Albums_id),
  Track_id int references Artist(Artist_id),
  Title varchar (50),
  Times int
);

create table Genre 
(
  Genre_id int references Artist(Artist_id),
  Genre_name varchar(50)
);
