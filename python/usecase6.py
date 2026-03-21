#svartelisting 

import sqlite3
con = con = sqlite3.connect("TreningDB.db")

cursor = con.cursor()
cursor.execute()

con.close()

def usecase6(epost):
    base_dir = Path(__file__).resolve().parent
    db_path = base_dir.parent/ "TreningDB.db"
    count_path = base_dir.parent / "sql" / "usecase6.sql"
    
    connection = sqlite3.connect(db_path)
    cursor = connection.cursor()
    
    with open(count_path, "r", encoding="utf-8") as f:
        count_query = f.read()
        cursor.execute(count_query, {"epost": epost})
        epost = cursor.fetchone()
        
    if epost is None:
        print("Ingen epost svartelista")
        return
    
    antall_prikker = epost[0]
    
    if antall_prikker < 3:
        print(f"Bruker {epost} har bare {antall_prikker} og er ikke utestengt per nå")
        return

    cursor.execute("SELECT u.brukerID COUNT(*) AS AntallPrikker")
