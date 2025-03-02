import mysql.connector
from mysql.connector import Error

def create_database(host_name, database_name, user_name, user_password):
    
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            password=user_password
        )
        
        cursor = connection.cursor()
        cursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name}")
        print(f"Database '{database_name}' created successfully!")
    
    except Error as e:
        print(f"Failed to connect to the MySQL server: {e}")
        except mysql.connector.Error
    
    finally:
        if connection:
            connection.close()

if __name__ == "__main__":
    
    host_name = "localhost"
    database_name = "alx_book_store"
    user_name = "your_username"
    user_password = "your_password"
    
    create_database(host_name, database_name, user_name, user_password)
CREATE DATABASE IF NOT EXISTS alx_book_store
