from flask import Flask, render_template, request, redirect
from utils import connect_to_database, execute_query

app = Flask(__name__)

@app.route('/')
def home_page():

    # establish a connection with the sql server
    connection = connect_to_database(
        hostname = "localhost",
        user= "root",
        password = "Bora@1992",
        db_name = "join_us"
    )

    q = "SELECT COUNT(*) FROM users;"
    results = execute_query(connection, q)

    connection.close()
    count = results[0][0]

    return render_template("home.html", data=count)

@app.route("/", methods = ["POST"])
def register_user():
    email = request.form['email']

    q = "INSERT INTO users (email_id) VALUES ('%s');" % email

    connection = connect_to_database(
        hostname = "localhost",
        user= "root",
        password = "Bora@1992",
        db_name = "join_us"
    )
    errors = execute_query(connection, q)
    if errors is not None:
        return render_template("home.html", error=errors)
    return redirect("/")

if __name__ == "__main__":
    print("Launching the flask server")
    app.run(debug=True)
