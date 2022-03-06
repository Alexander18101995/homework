create table Artist
(
  Artist_id int primary key,
  Name varchar (50),
  Albums_id int not null references Albums(Albums_id),
  Genre_id int not null references Genre(Genre_id)
);

create table Albums
(
  Albums_id int primary key,
  Artist_id int not null references Artist(Artist_id),
  Albums_name varchar (50),
  Years integer not null
);

create table Tracks
(
  Track_id int primary key references Albums(Albums_id),
  Title varchar (50),
  Times int not null
);

create table Genre 
(
  Genre_id int primary key,
  Genre_name varchar(50),
  Artist_id int not null references Artist(Artist_id)
);

create table Collection
(
  Collection_id int primary key,
  Collection_name varchar(50),
  Years int not null,
  Tracks_id int not null references Tracks(Tracks_id),
  Albums_id int not null references Albums(Albums_id)
);
