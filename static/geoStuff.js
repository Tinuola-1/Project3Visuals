let myMap = L.map("map", {
    center: [40.52, -100.67],
    zoom: 5

});

// Add a tile layer.
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(myMap);

let statesData = 'C:\\Users\\bryan\\Documents\\Project3Visuals\\gz_2010_us_040_00_500k.geojson'

d3.json(statesData, function() {
    console.log(response)
}) 

L.geoJson(statesData).addTo(map);
