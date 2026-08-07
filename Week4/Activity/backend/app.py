from flask import Flask
import mysql.connector
import os
app = Flask(__name__)

@app.route("/")
def home():
    return {
            "message": "Backend is running successfully",
            "status": "success"
            }
@app.route("/health")
def health():
    return {
            "status": "healthy"
            }

@app.route("/db")
def database():
    try:
        connection = mysql.connector.connect(
                host=os.getenv("DB_HOST"),
                user=os.getenv("DB_USER"),
                password=os.getenv("DB_PASSWORD"),
                database=os.getenv("DB_NAME")
                )
        if connection.is_connected():
            return {
                    "database": "Connected Successfully"
                    }
    except Exception as e:
        return {
                "database": "connection failed",
                "error": str(e)

                }

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
