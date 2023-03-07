tracks_no_id.sql:

Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
Album name
Media type
Genre

SELECT a.Title, mt.Name, g.Name FROM Album a
    JOIN Track t 
    ON a.AlbumId = t.AlbumId
    JOIN MediaType mt 
    ON t.MediaTypeId = mt.MediaTypeId
    JOIN Genre g 
    ON t.GenreId = g.GenreId