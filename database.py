import psycopg2
from config import DATABASE_CONFIG

def get_connection():
    return psycopg2.connect(**DATABASE_CONFIG)

def fetch_data():
    conn = None
    try:
        conn = get_connection()
        cur = conn.cursor()
        tables = []
        cur.execute('SELECT * FROM "Comment"')
        rows = cur.fetchall()
        for row in rows:
            print(row)
        cur.close()
    except Exception as e:
        print(f'Got an error: {e}')
    finally:
        if conn:
            conn.close()

if __name__ == '__main__':
    fetch_data()
