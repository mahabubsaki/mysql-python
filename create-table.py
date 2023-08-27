from main import mydb

cursor = mydb.cursor()

sql_command = """
Create table pytable (
name varchar(30),
email varchar(30),
id int
)
"""

cursor.execute(sql_command)