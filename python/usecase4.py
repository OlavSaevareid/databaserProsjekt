import sqlite3
import os
from datetime import datetime
#ukeplan

def usecase4(startdato, uke):
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase4.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()
    try: 

        with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
            query = queryRaw.read()

        cursor.execute(query, {
            "startdato" : startdato
        })

        rader = cursor.fetchall()
        
        if not rader:
            print("Fant ingen gruppetimer på valgt dato")
            return
        
        print(f"Ukeplan for uke {uke}, fra {startdato}:")
        for rad in rader:
            print(rad)

        connection.commit()
    finally:
        connection.close()

if __name__ == "__main__":
    usecase4('2026-03-16', 12)