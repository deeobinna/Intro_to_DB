#Write a simple python script that creates the database alx_book_store in your MySQL server.
import mysql.connector 
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server
        connection = mysql.connector.connect(
            host='localhost',
            user='your_username', 
            password='your_password'  
        )
        
        if connection.is_connected():
            cursor = connection.cursor()
            # Create database
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully.")
    
    except Error as e:
        print(f"Error: {e}")
    
    finally:
        if "connection" in locals() and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed.")

if __name__ == "__main__":
    create_database()