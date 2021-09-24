
var state_names = [];
var price = [];
var avg_price = []
var when = []
console.log("Hello")
d3.json("/page3").then(function(data) { 
 var state_h = data 
 console.log(data)
 
 for (var key in state_h) {
   
      if (state_h[key].states === "alabama") {
    state_names.push(state_h[key].states);
    price.push(state_h[key].median_listing_price);
    avg_price.push(state_h[key].average_listing_price);
    when.push(state_h[key].month_date_yyyymm)
      }
  }


//console.log(state_names);
console.log(when)
console.log(price);
console.log(avg_price);

});


var trace1 = {
  x: when,
  y: price,
  mode: 'lines',
  type: 'scatter',
  line: {
    color: 'rgb(55, 128, 191)',
    width: 1
  }
};

var trace2 = {
  x: when,
  y: avg_price,
  mode: 'lines',
  type: 'scatter'
};
var layout = {
  title:'Historic Median and Average Listing Price',
  width: 800,
  height: 600,
  yaxis: { autorange: false, range:[100000, 300000] },
};

var plot_data = [trace1];
Plotly.newPlot("LinePlot", plot_data, layout);
 

metros = []
hots = []

d3.json("/page4").then(function(hotdata) { 
  var metro_h = hotdata 
  console.log(hotdata)
  
  for (var key in metro_h) {
    
       if (metro_h[key].state_id === "tx") {
     metros.push(metro_h[key].metro);
     hots.push(metro_h[key].hotness_score);
     
       }
   }
 
 
 //console.log(state_names);
 console.log(metros)
 console.log(hots);
 
 
 });
