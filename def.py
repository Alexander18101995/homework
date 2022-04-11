documents = [
        {"type": "passport", "number": "2207 876234", "name": "Василий Гупкин"},
        {"type": "invoice", "number": "11-2", "name": "Геннадий Покемонов"},
        {"type": "insurance", "number": "10006", "name": "Аристарх Павлов"}
      ]

directories = {
        '1': ['2207 876234', '11-2'],
        '2': ['10006'],
        '3': []
      }

comand = input('Введите команду: ')
if comand == 'p':
  def people():
    number = input('Введите номер: ')
    for doc in documents:
      if number == doc['number']:
         print(doc['name'])
  people()        
elif comand == 'l':
  def list():
    for doc in documents:
      print(doc['type'], doc['number'], doc['name'])     
  list()
elif comand == 's':
  def shelf():
    shelf = input("Введитн номер документа ")
    for s in directories.items():
      if shelf in s[1]:
       print(s[0]) 
  shelf()
elif comand == 'a':
  def add():
    x = list(input("Тип, номер, имя, полку(Через запятую)  ").split(", "))
    documents.append({"type": x[0], "number": x[1], "name": x[2]})
    directories[x[3]].append(x[1])
    print(documents)
    print(directories)
  add()