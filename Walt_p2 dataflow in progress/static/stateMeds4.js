
var state_names = [];
var price = [];
var avg_price = []
var when = []
var when_new = " "
var conv_when = []
console.log("Hello")
d3.json("/page3").then(function(data) { 
 var state_h = data 
 console.log(data)
 window.data = data
 for (var key in state_h) {
   
      if (state_h[key].states === "pennsylvania") {
    state_names.push(state_h[key].states);
    price.push(state_h[key].median_listing_price);
    avg_price.push(state_h[key].average_listing_price);
    when.push(state_h[key].month_date_yyyymm)
    
      }
  }

 
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
  xaxis: {type: 'category'},
  yaxis: { autorange: false, range:[100000, 500000] },
};

var plot_data = [trace1, trace2];
Plotly.newPlot("LinePlot", plot_data, layout);
});

// END OF D3
console.log("outside d3",when);
console.log(when.length);
metros = []
hots = []

d3.json("/page4").then(function(hotdata) { 
  var metro_h = hotdata 
  console.log(hotdata)
  
  for (var key in metro_h) {
    
       if (metro_h[key].state_id.includes('pa')) {
     metros.push(metro_h[key].metro);
     hots.push(metro_h[key].hotness_score);
     
       }
   }
  console.log(metros);
  console.log(hots);

  var bardata = [
    {
      x: metros,
      y: hots,
      type: 'bar'
    }
  ];
  
  Plotly.newPlot('barchart', bardata);
 
//END of d3
 });
