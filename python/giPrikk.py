import sqlite3
import os

#Gir tre prikker til johnny
def giPrikk():
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "giPrikk.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()
    try: 

        with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
            query = queryRaw.read()

        cursor.execute(query)


        connection.commit()
        print("Tre prikker gitt til Johnny")
    finally:
        connection.close()

if __name__ == "__main__":
    giPrikk()