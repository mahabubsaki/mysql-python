import mysql.connector
from dotenv import load_dotenv
import os
load_dotenv()
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd=os.getenv('Password'),
    database='db_with_python'
)