from main import mydb

cursor = mydb.cursor()

sql_command = """
select * from pytable
"""

cursor.execute(sql_command)
data = cursor.fetchall()
print(data)
