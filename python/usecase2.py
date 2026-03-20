import sqlite3
import os
import uuid
from sqlite3 import IntegrityError

def usecase2(epost, aktivitetstype, starttid):
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase2.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()
    try:
        with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
            sqlCommands = queryRaw.read().split(";")
            check_sql = sqlCommands[0].strip()
            insert_sql = sqlCommands[1].strip()

        paramsCheck  = {
            'epost': epost,
            'aktivitetstype' : aktivitetstype,
            'starttid' : starttid
        }

        cursor.execute(check_sql, paramsCheck)
        rad = cursor.fetchone()

        if not rad:
            print("Gruppetimen eksisterer ikke")
            return
        
        bookingID = str(uuid.uuid4())[:5]
        gruppetimeID, brukerID = rad

        paramsInsert = {
            'bookingid' : bookingID,
            'brukerid' : brukerID,
            'gruppetimeid' : gruppetimeID,

        }
        cursor.execute(insert_sql,paramsInsert )
        connection.commit()
        print("Booking er registrert")
    
    except IntegrityError as e:
        print(f"Brukeren har allerede booket timen{e}")

    finally:
        connection.close()


if __name__ == "__main__":
    usecase2("johnny@stud.ntnu.no",
        "Spinning60",
        "2026-03-17 18:30:00")