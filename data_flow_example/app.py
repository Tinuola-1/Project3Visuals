from flask import Flask, render_template
from flask import jsonify

import psycopg2
import sys
import json

# Create an instance of our Flask app.
app = Flask(__name__)

# DB connection settings
con = psycopg2.connect(
    "host='localhost' dbname='Real_Estate' user='postgres' password='postgres'")
cur = con.cursor()

# Index Page Route


@app.route("/")
def index():
    return render_template("index.html")

# States Page Route


@app.route("/statesPage")
def state():
    return render_template("statesPage.html")

# Metro Page Route


@app.route("/metroPage")
def metro():
    return render_template("metroPage.html")

# Data retriaval page


@app.route('/hotnessdata')
def grab_data():
    cur.execute("""select * from  hotness_by_county limit 1000""")
    data = [col for col in cur]
    return jsonify(data)
    # return 'Data Retriaval Successful. <a href="/">Go back</a>'


if __name__ == "__main__":
    app.run(debug=True)
