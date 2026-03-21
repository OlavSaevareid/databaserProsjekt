import sqlite3
import os

#Finn de som trener sammen
def usecase8():
    baseDir = os.path.dirname(__file__)
    dbPath = os.path.join(baseDir, "..", "treningDB.db")
    usecasePath = os.path.join(baseDir, "..", "sql", "usecase8.sql")

    connection = sqlite3.connect(dbPath)
    cursor = connection.cursor()

    try:
        with open(usecasePath,"r", encoding="Utf-8") as queryRaw:
            query = queryRaw.read()

        cursor.execute(query)

        rader = cursor.fetchall()
        
        if not rader:
            print("Det er ingen som har trent sammen")
            return
        
        else:
            print(f"De som har trent mest sammen denne måneden er:")
            for rad in rader:
                epost1, epost2 = rad[0], rad[1]
                print(f"{epost1} {epost2}, ")

        connection.commit()
    finally:
        connection.close()


if __name__ == "__main__":
    usecase8()