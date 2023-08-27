from main import mydb

cursor = mydb.cursor()

sql_command = """
update pytable
set name = "saki"
where id = 1
"""

cursor.execute(sql_command)
mydb.commit()
