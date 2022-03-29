-- 1 количество исполнителей в каждом жанре; 
select gn.genre_name,count(ar.name)
from artist ar
join artist_genre ag on ag.artist_id = ar.artist_id
join genre gn on ag.genre_id = gn.genre_id
group by gn.genre_name
-- 2 количество треков, вошедших в альбомы 2019-2020 годов;
select count(tr.title)
from tracks tr
join albums al on al.albums_id = tr.albums_id 
where al.years between 2019 and 2020
group by tr.title
-- 3 средняя продолжительность треков по каждому альбому;
select albums_id, avg(times) 
from tracks 
group by albums_id
-- 4 все исполнители, которые не выпустили альбомы в 2020 году;
select ar.name
from artist ar
join artist_albums aa on aa.artist_id = ar.artist_id
join albums al on al.albums_id = aa.albums_id
where not in (2020)
-- 5 названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
select cc.collection_name
from collection cc
join tracks_collection tc on cc.collection_id = tc.collection_id
join tracks tt on tt.track_id = tc.track_id
join albums aa on aa.albums_id = tt.albums_id
join artist_albums am on am.albums_id = aa.albums_id
join artist ar on ar.artist_id = am.artist_id 
where ar.name = 'Alex Kuas'
-- 6 название альбомов, в которых присутствуют исполнители более 1 жанра;
select al.album_name
from genre gn 
join artist_genre ag on ag.genre_id = gn.genre_id
join artist ar on ar.artist_id = ag.artist_id 
join artist_albums aa on aa.artist_id = ar.artist_id
join albums al on al.albums_id = aa.albums_id
group by al.album_name
having count(gn.genre_name) > 1
-- 7 наименование треков, которые не входят в сборники;
select tr.title from tracks tr
left join tracks_collection tc on tc.track_id = tr.track_id
left join collection cl on cl.collection_id = tc.collection_id
where cl.collection_name is null
-- 8 исполнителя(-ей), написавшего самый короткий по продолжительности трек 
select distinct ar.name
from artist ar
join artist_albums aa on aa.albums_id = ar.artist_id
join tracks tr on tr.albums_id = aa.albums_id
where tr.times = (select min(times)
                  from tracks)
-- 9 название альбомов, содержащих наименьшее количество треков.
select distinct al.album_name
from albums  al
left join tracks tr on tr.albums_id = al.albums_id
where tr.albums_id in (select albums_id
                       from tracks
                       group by albums_id
                       having count(albums_id) = (select count(albums_id)
												                          from tracks
												                          group by albums_id
												                          order by count
												                          limit 1
												                         )
					          )
   														 
												
order by al.album_name
