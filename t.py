import psycopg2

conn = psycopg2.connect(database="clients_db", user="postgres", password="postgres")
with conn.cursor() as cur:

  def create_db(sql):
    cur.execute(sql)
  create_db("""create table clients
  (client_id int primary key, 
  first_name varchar(20),
  last_name varchar(20),
  email varchar(30),
  phones varchar(20) default None;""")

  def add_client(first_name, last_name, email, phones=None):
    cur.execute(f"""" insert into clients (first_name,last_name,email,phones)
    values ({first_name},{last_name},{email},{phones};""")
  add_client('Alex','Smit','test@ya.ru',123)

  def add_phone(onn, client_id, phone):
    cur.execute(f"""" insert into clients (client_id, phone)
    values({client_id},{phone};""")
  add_phone(1,123)

  def delete_phone( client_id):
    cur.execute(f"""delete from clients where clients_id = {client_id};""")
  delete_phone(1)

  def delete_client(client_id):
    cur.execute(f"""delete from clients where clients_id = {client_id};""")
  delete_client(1)


conn.close()