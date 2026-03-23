import sqlite3
import os
import uuid
from sqlite3 import IntegrityError
from datetime import datetime

#booking av trening 
def usecase2(epost, aktivitetstype, starttid):
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase2.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()
    try:
        #Sjekker først om bruker er svartelista
        cursor.execute("""
            SELECT u.UtestengtTil
            FROM Bruker AS u
            WHERE u.Epost = :epost
        """, {
            "epost": epost
        })

        resultat = cursor.fetchone()

        if resultat is None:
            print("Fant ikke bruker")
            return
        
        UtestengtTil = resultat[0]
        if UtestengtTil is None:
            pass

        else:
            UtestengtTil = datetime.strptime(UtestengtTil, "%Y-%m-%d %H:%M:%S")

            if datetime.now() < UtestengtTil:
                print(f"{epost} er utestengt til {UtestengtTil} og kan ikke booke denne timen")
                return
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
            print("Fant ikke gruppetime eller bruker")
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
        print(f"Brukeren har allerede booket timen: {e}")

    finally:
        connection.close()


if __name__ == "__main__":
    usecase2("johnny@stud.ntnu.no",
        "Spin60",
        "2026-03-17 18:30:00")