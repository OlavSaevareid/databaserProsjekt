import sqlite3
import os

# Sjekk og oppdater svartelisting
def usecase6(epost, referansetid):
    baseDir = os.path.dirname(__file__)
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase6.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    try:
        # 1. Sjekk først om bruker har minst 3 prikker siste 30 dager
        cursor.execute("""
            SELECT COUNT(*), MIN(p.Tid)
            FROM Bruker AS u
            JOIN Prikk AS p ON p.BrukerID = u.BrukerID
            WHERE u.Epost = :epost
              AND p.Tid BETWEEN DATETIME(:referansetid, '-30 days') AND DATETIME(:referansetid)
        """, {
            "epost": epost,
            "referansetid": referansetid
        })

        resultat = cursor.fetchone()
        antall_prikker = resultat[0]
        
        if antall_prikker < 3:
            print(f"{epost} ble ikke svartelistet fordi brukeren bare har {antall_prikker} prikk(er) siste 30 dager.")
            return

        # 2. Kjør UPDATE fra sql-fil
        with open(usecasePath, "r", encoding="utf-8") as queryRaw:
            query = queryRaw.read()

        cursor.execute(query, {
            "epost": epost,
            "referansetid": referansetid
        })
        connection.commit()

        # 3. Hent og skriv ut resultat
        cursor.execute("""
            SELECT UtestengtTil
            FROM Bruker
            WHERE Epost = :epost
        """, {"epost": epost})

        rad = cursor.fetchone()

        if rad is None:
            print("Brukeren finnes ikke.")
        else:
            print(f"Brukeren {epost} er svartelistet til {rad[0]}")

    finally:
        connection.close()


if __name__ == "__main__":
    usecase6("johnny@stud.ntnu.no", "2026-03-18 12:00:00")