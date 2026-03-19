WITH Prikkstatus AS (
    SELECT u.BrukerID, COUNT(*) AS AntallPrikker, MIN(p.Tid) AS ForstePrikk
    FROM Bruker AS u
    JOIN Prikk AS p 
        ON u.BrukerID = p.BrukerID
    WHERE u.Epost = :epost
      AND p.Tid >= date(:referansedato, '-30 day')
      AND p.Tid <= date(:referansedato)
    GROUP BY u.BrukerID
)
UPDATE Bruker AS u
SET UtestengtTil = (
    SELECT date(ForstePrikk, '+30 day')
    FROM Prikkstatus
    WHERE Prikkstatus.BrukerID = u.BrukerID
)
WHERE u.BrukerID IN (
    SELECT BrukerID
    FROM Prikkstatus
    WHERE AntallPrikker >= 3
);