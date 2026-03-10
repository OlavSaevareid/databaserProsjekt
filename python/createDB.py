import sqlite3

def createDB():
    connection = sqlite3.connect("treningDB.db")
    cursor = connection.cursor()

    print("Kobler til/lager databasen")

    with open("../sql/schema.sql", "r", encoding = "utf-8") as schemaRaw:
        schema = schemaRaw.read()
        cursor.executescript(schema)

    print("Oppretter skjema")

    with open("-./sql/data.sql", "r", encoding = "utf-8") as dataRaw:
        data = dataRaw.read()
        cursor.executescript(data)

    print("Fyller inn data")

    connection.commit()
    connection.close()

    print("Databasen er opprettet med skjema og data")

    if __name__ == "__main__":
        createDB()