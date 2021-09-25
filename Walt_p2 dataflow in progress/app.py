from flask import Flask, jsonify, render_template, redirect
import psycopg2
import pandas as pd
import json

postgres = "postgres"
Real_Estate = "Real_Estate"

monthly_by_state = "monthly_by_state"
hotness_by_metro = "hotness_by_metro"
states_tbl = "states"

# Create postgres connections and query state historic data for listing prices and hotness indices.
postgres_url = f"postgresql://postgres:{postgres}@127.0.0.1:5432/{Real_Estate}"
conn = psycopg2.connect(postgres_url)
cursor = conn.cursor()

cursor.execute(f'''SELECT state, state_id, median_listing_price,
        month_date_yyyymm, average_listing_price from {monthly_by_state}''')

results = cursor.fetchall()
price_data = [ {"states": result[0], "state_id":result[1],"median_listing_price": result[2], "month_date_yyyymm": result[3],
               "average_listing_price": result[4]}
              for result in results]

conn.close()
#  Gather Metro Hotness Scrore Data

postgres_url = f"postgresql://postgres:{postgres}@127.0.0.1:5432/{Real_Estate}"
conn = psycopg2.connect(postgres_url)
cursor = conn.cursor()

cursor.execute(f'''SELECT metro, state_id, hotness_score 
         from {hotness_by_metro} WHERE month_date_yyyymm = 202108''')

results2 = cursor.fetchall()
hot_data = [ {"metro": result[0], "state_id":result[1],"hotness_score": result[2]}
              for result in results2]

conn.close()



#Gathering State abreviation data to add to hotness table/dataframe:
postgres_url = f"postgresql://postgres:{postgres}@127.0.0.1:5432/{Real_Estate}"
conn = psycopg2.connect(postgres_url)
cursor = conn.cursor()

cursor.execute(f'''SELECT state_long_name, state_short_name from {states_tbl}''')

results = cursor.fetchall()
state_ids = [ {"state_nm": result[0], "abr":result[1]
               }
              for result in results]

conn.close()


#Arrange Listing Price data:
df = pd.DataFrame(price_data)
gdf = df.groupby(['states', 'month_date_yyyymm'], as_index=False).sum()
state_h = gdf.to_json(orient = "index")

#Arrange metro hotness score data:
mhdf = pd.DataFrame(hot_data)
stid = pd.DataFrame(state_ids)


metro_hot = mhdf.to_json(orient = "index")
st_abr = stid.to_json(orient = "index")



app = Flask(__name__)


@app.route("/")
def Home():
    return render_template("index.html")
    
@app.route("/page3")
def transform():
    return(state_h)

@app.route("/State_Mean_Medians")
def meanMedians():
    return render_template("MM.html")

@app.route("/page4")
def metroHotness():
    return(metro_hot)

@app.route("/page5")
def state_abr():
    return(st_abr)


if __name__ == "__main__":
    app.run(debug=True)