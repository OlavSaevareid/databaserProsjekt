import sqlite3
import os

# Sjekk og oppdater svartelisting
def usecase6(maaned):
    baseDir = os.path.dirname(__file__)
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase7.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    try:
        with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
            query = queryRaw.read()

        cursor.execute(query, {
            "maaned" : maaned
        })

        rader = cursor.fetchall()
        
        if not rader:
            print("Det er ikke registrert noen treninger for noen brukere denne maaenden")
            return
        
        if len(rader) == 1:
            print(f"Den som har trent mest denne måneden er:")
            print(f"{rader[0][1]} {rader[0][2]}")
            return
        else:
            print(f"De som har trent mest denne måneden er:")
            for rad in rader:
                fornavn, etternavn = rad[1], rad[2]
                print(f"{fornavn} {etternavn}, ")

        connection.commit()
    finally:
        connection.close()


if __name__ == "__main__":
    usecase6("03")