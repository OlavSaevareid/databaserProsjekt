import sqlite3
import os

#Personlig brukerhistorie

def usecase5(startdato, epost):
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase5.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()
    try: 

        with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
            query = queryRaw.read()

        cursor.execute(query, {
            "startdato" : startdato,
            "epost" : epost
        })

        rader = cursor.fetchall()
        
        if not rader:
            print("Brukeren har ingen historikk fra denne datoen")
            return
        
        print(f"Besøkshistorie for {epost} fra {startdato}")
        for rad in rader:
            print(rad)

        connection.commit()
    finally:
        connection.close()

if __name__ == "__main__":
    usecase5("2026-01-01 00:00:00","johnny@stud.ntnu.no")