import sqlite3
import os

def createDB():
    baseDir = os.path.dirname(__file__) #Current directory-->Python
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    schemaPath = os.path.join(baseDir, "..", "sql", "schema.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    print("Kobler til/lager databasen")
    try:
        with open(schemaPath, "r", encoding = "utf-8") as schemaRaw:
            schema = schemaRaw.read()
            cursor.executescript(schema)

        print("Oppretter skjema")

        connection.commit()

        print("Databasen er opprettet med skjema")
    finally: 
        connection.close()

if __name__ == "__main__":
    createDB()