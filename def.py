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
 def people(number):
  for doc in documents:
   if number == doc['number']:
    print(doc['name'])  
 people(input('Введите номер: '))          
elif comand == 'l':
  def list(l):
    for doc in documents:
      print(doc['type'], doc['number'], doc['name'])     
  list(documents)
elif comand == 's':
 def shelf(s):
  for dir in directories.items():
    if s in dir[1]:
      print(dir[0]) 
 shelf(input("Введитe номер документа: "))   
elif comand == 'a':
 def add(a):
  if a[3] <= '3':
   documents.append({"type": a[0], "number": a[1], "name": a[2]})
   directories[a[3]].append(a[1])
  elif a[3] > '3':
    directories[a[3]] = []
    documents.append({"type": a[0], "number": a[1], "name": a[2]})
    directories[a[3]].append(a[1])
  print(documents)
  print(directories)
 add(list(input("Тип, номер, имя, полку(Через запятую)  ").split(", ")))