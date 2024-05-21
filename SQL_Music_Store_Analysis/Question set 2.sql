--Write query to return the email, first name, last name, & Genre of all Rock Music listeners.
--Return your list ordered alphabetically by email starting with A

select distinct email, first_name, last_name
from customer
Join invoice on customer.customer_id = invoice.customer_id
Join invoice_line on invoice.invoice_id = invoice_line.invoice_id
where track_id IN(
	select track_id from track
	join genre on track.genre_id = genre.genre_id
	where genre.name LIKE 'Rock'
)
ORDER BY email;

---Let's invite the artists who have written the most rock music in our dataset.
--Write a query that returns the Artist name and total track count of the top 10 rock bands

select artist.artist_id, artist.name, COUNT(artist.artist_id) AS number_of_songs
FROM track
JOIN album ON album.album_id = track. album_id
JOIN artist ON artist.artist_id = album. artist_id
JOIN genre ON genre.genre_id = track.genre_id
where genre.name like 'Rock'
GROUP BY artist.artist_id
ORDER BY number_of_songs DESC
LIMIT 10;

--Return all the track names that have a song length longer than the average song length. 
---Return the Name and Milliseconds for each track. Order by the song length with the longest
---songs listed first

select name, milliseconds
from track
where milliseconds > (
	select avg (milliseconds) as avg_track_length
	from track)
Order by milliseconds desc;




