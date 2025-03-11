from psycopg2 import *
from config import DATABASE_CONFIG
from faker import Faker
fake = Faker()
def connect_postgres():
    try:
        conn = connect(**DATABASE_CONFIG)
        print("success")
        return conn
    except Exception as e:
        print(f'{e}')
        return None
def generate_id(cursor, table):
    while True:
        id = fake.random_number(digits=6, fix_len=True)
        cursor.execute(f'SELECT "{table} ID" FROM "{table}" WHERE "{table} ID" = %s;', (id,))
        if not cursor.fetchone():
            return id

conn = connect_postgres()
cursor = conn.cursor()

#for i in range(20):
user_id = generate_id(cursor, 'Reader')
nickname = fake.user_name()
login = fake.email()
password = fake.password()
cursor.execute('INSERT INTO public."Reader" ("Reader ID", "Nickname", "Login", "Password") VALUES (%s, %s, %s, %s);',
               (user_id, nickname, login, password))

team_id = generate_id(cursor, 'Team')
team_name = fake.company() + ' Comics'
cursor.execute('INSERT INTO public."Team" ("Team ID", "Name") VALUES (%s, %s);',
               (team_id, team_name))

content_maker_id = generate_id(cursor, 'Content-maker')
nickname = fake.user_name()
login = fake.email()
password = fake.password()
cursor.execute('INSERT INTO public."Content-maker" ("Content-maker ID", "Nickname", "Login", "Password") VALUES (%s, %s, %s, %s);',
               (content_maker_id, nickname, login, password))

comics_name = fake.
comics_id =
comics_descr =
release_date =

#conn.commit()