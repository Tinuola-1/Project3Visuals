d3.json("/hotnessdata", function(data) {
  console.log(data)

  // function unpack(rows, key) {
  //   return rows.map(function(row) { return row[key]; });
  // }

  locations = [];
  z = [];
  text = [];

  data.forEach(element => {
    locations.push(element[2].trim().toUpperCase());
    z.push(element[8]);
    text.push(element[6]);
    console.log(`The value of data[i][3] is: ${element[8]}`)
  });

  console.log(locations);
  console.log(z);
  console.log(text);

  let results = [{
    type: 'choropleth',
    locationmode: 'USA-states',
    locations: locations,
    z: z,
    text: text,
    zmin: 0,
    zmax: 1500,
    colorscale: [
        [0, 'rgb(242,240,247)'], [0.2, 'rgb(218,218,235)'],
        [0.4, 'rgb(188,189,220)'], [0.6, 'rgb(158,154,200)'],
        [0.8, 'rgb(117,107,177)'], [1, 'rgb(84,39,143)']
    ],
    colorbar: {
        title: 'Hotness Rank',
    },
    marker: {
        line:{
            color: 'rgb(255,255,255)',
            width: 2
        }
    }
}];

let layout = {
    title: 'Hotness Rating by State',
    geo:{
        scope: 'usa',
        showlakes: true,
        lakecolor: 'rgb(255,255,255)'
    },
    paper_bgcolor: "rgba(0,0,0,0)",
    plot_bgcolor: "rgba(0,0,0,0)"
};

var config = {responsive: true}

Plotly.newPlot("myDiv", results, layout, config, {showLink: false});
});