--1 название и год выхода альбомов, вышедших в 2018 году;
select albums_name, years 
from albums
where years = 2018
--2 название и продолжительность самого длительного трека;
select title,times
from tracks
where times = (select max(times) 
               from tracks)
--3 название треков, продолжительность которых не менее 3,5 минуты;
select title 
from tracks 
where times >= 3,50
--4 названия сборников, вышедших в период с 2018 по 2020 год включительно;
select collection_name 
from colletction 
where years between 2018 and 2020
--5 исполнители, чье имя состоит из 1 слова;
select name 
from artist 
where name like '%'
--6 название треков, которые содержат слово "мой"/"my".
select title 
from tracks 
where title like '%My%'
