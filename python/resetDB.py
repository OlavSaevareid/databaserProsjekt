import os 
from python.createDB import createDB

def resetDB():
    baseDir = os.path.dirname(__file__) 
    dbPath = os.path.join(baseDir, "..", "treningDB.db")

    print("\n nullstiller databasen")

    if os.path.exists(dbPath):
        os.remove(dbPath)
        print("\n sletter eksisterende database")
    else: 
        print("\n ingen eksisterende database")

    createDB()
    print("\n ny database er opprettet")

if __name__ == "__main__":
    resetDB()