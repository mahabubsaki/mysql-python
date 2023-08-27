from main import mydb

cursor = mydb.cursor()

sql_command = """
insert into pytable(name,email,id)
values("jack sparrow","sparrow@gmail.com",2)
"""

cursor.execute(sql_command)
mydb.commit()