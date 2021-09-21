from flask import Flask, jsonify, render_template, redirect
import os
import sqlite3
import psycopg2
import socket
import pandas as pd
import numpy as np
from sqlalchemy import create_engine
import json

postgres = "postgres"
Real_Estate = "Real_Estate"
monthly_by_state = "monthly_by_state"

# postgres_url = f"postgresql://postgres:{config.postgres_pwd}@127.0.0.1:5432/{db_name}"
postgres_url = f"postgresql://postgres:{postgres}@127.0.0.1:5432/{Real_Estate}"
conn = psycopg2.connect(postgres_url)
cursor = conn.cursor()

cursor.execute(f'''SELECT state, median_listing_price from {monthly_by_state}''')

results = cursor.fetchall()
price_data = [ {"states": result[0], "median_listing_price": result[1]} for result in results]

conn.close()
print(type(price_data))

df = pd.DataFrame(price_data)
state_pr = df.groupby('states').agg(median_price = ('median_listing_price','mean'))

jstate_pr = state_pr.to_json()




app = Flask(__name__)

moons = {"Jupiter": ["Io","Ganymede","Europa","Callisto"],
        "Saturn": ["Titan","Enceladus","Dione"],
        "Uranus": ["Ariel","Belinda","Oberon","Titania"],
        "Neptune": ["Despina","Nereid","Triton","Larissa"]}


@app.route("/")
def Home():
    return render_template("index.html")
    # return jsonify(moons=moons)

@app.route("/datapage")
def using_api_for_data():
    print("responding to raw-web-api route: ")

    return jsonify(moons)

@app.route("/page2")
def visual ():
    return jsonify(price_data)

@app.route("/page3")
def transform():
    return(jstate_pr)

@app.route("/State_Mean_Medians")
def meanMedians():
    return render_template("MM.html")



if __name__ == "__main__":
    app.run(debug=True)