from psycopg2 import *
from config import DATABASE_CONFIG
from faker import Faker
from random import randint, choice
from parcing import info

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

for i in range(20):
    reader_id = generate_id(cursor, 'Reader')
    nickname = fake.user_name()
    login = fake.email()
    password = fake.password()
    cursor.execute('INSERT INTO public."Reader" ("Reader ID", "Nickname", "Login", "Password") VALUES (%s, %s, %s, %s);',
                   (reader_id, nickname, login, password))

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

    comics_name = info[0][i]
    comics_id = generate_id(cursor, 'Comics')
    comics_descr = info[2][i]
    release_date = fake.date()
    cursor.execute('INSERT INTO public."Comics" ("Comics ID", "Name", "Description", "Team ID", "Release date") VALUES (%s, %s, %s, %s, %s);',
                   (comics_id, comics_name, comics_descr, team_id, release_date))

    price = randint(0, 10000)
    payment_date = fake.date()
    payment_id = generate_id(cursor, 'Subscription')
    cursor.execute('INSERT INTO public."Subscription" ("Comics ID", "Price (rub)", "Payment date", "Reader ID", "Subscription ID") VALUES (%s, %s, %s, %s, %s);',
                   (comics_id, price, payment_date, reader_id, payment_id))

    comment_id = generate_id(cursor, "Comment")
    text = fake.sentence()
    comment_date = fake.date()
    cursor.execute('INSERT INTO public."Comment" ("Comics ID", "Comment ID", "Date", "Text", "Reader ID") VALUES (%s, %s, %s, %s, %s);',
                   (comics_id, comment_id, comment_date, text, reader_id))

    chapter_id = randint(1, 32000)
    chapter_name = fake.word()
    cursor.execute('INSERT INTO public."Chapter" ("Comics ID", "Chapter ID", "Name") VALUES (%s, %s, %s);',
                   (comics_id, chapter_id, chapter_name))

    collection_id = generate_id(cursor, "Collection")
    collection_name = fake.word()
    cursor.execute('INSERT INTO public."Collection" ("Reader ID", "Collection ID", "Name") VALUES (%s, %s, %s);',
                   (reader_id, collection_id, collection_name))

    collection_note = fake.sentence()
    cursor.execute('INSERT INTO public."Collection Positions" ("Comics ID", "Collection ID", "Note") VALUES (%s, %s, %s);',
                   (comics_id, collection_id, collection_note))

    role_name = choice(['writer', 'painter', 'assistant', 'translator', 'editor'])
    cursor.execute('INSERT INTO public."Team roles" ("Team ID", "Content-maker ID", "Role name") VALUES (%s, %s, %s);',
                   (team_id, content_maker_id, role_name))
conn.commit()
