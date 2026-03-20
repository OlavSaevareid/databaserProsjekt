import sqlite3
import os
#registrering av oppmøte 
def usecase3(epost, aktivitetstype):
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase3.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
        query = queryRaw.read()

    cursor.execute(query, {
        "epost": epost,
        "aktivitetstype" : aktivitetstype
    })
    connection.commit()
    print("query utført")
    connection.close()

if __name__ == "__main__":
    usecase3()