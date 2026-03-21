WITH Prikkstatus AS (
    SELECT 
        u.BrukerID,
        COUNT(*) AS AntallPrikker,
        MIN(p.Tid) AS ForstePrikk
    FROM Bruker AS u
    JOIN Prikk AS p
        ON p.BrukerID = u.BrukerID
    WHERE u.Epost = :epost
      AND p.Tid BETWEEN DATETIME(:referansetid, '-30 days') AND DATETIME(:referansetid)
    GROUP BY u.BrukerID
)
UPDATE Bruker
SET UtestengtTil = (
    SELECT DATETIME(ForstePrikk, '+30 days')
    FROM Prikkstatus
    WHERE Prikkstatus.BrukerID = Bruker.BrukerID
)
WHERE BrukerID IN (
    SELECT BrukerID
    FROM Prikkstatus
    WHERE AntallPrikker >= 3
);