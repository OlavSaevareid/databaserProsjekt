import sqlite3
import os
#registrering av oppmøte 
def usecase3(epost, aktivitetstype, starttid):
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase3.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()
    try: 

        with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
            query = queryRaw.read()

        cursor.execute(query, {
            "epost": epost,
            "aktivitetstype" : aktivitetstype,
            "starttid" : starttid
        })

        
        if cursor.rowcount() == 0:
            print("Fant ingen booking å registrere oppmøte på")
            return

        connection.commit()
        print("oppmøte registrert")
    finally:
        connection.close()

if __name__ == "__main__":
    usecase3("johnny@stud.ntnu.no", "Spin60", "2026-03-17 18:30:00")