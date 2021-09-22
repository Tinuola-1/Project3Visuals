
var state_names = [];
var price = [];
var avg_price = []
var when = []
console.log("Hello")
d3.json("/page3").then(function(data) { 
  var mprice = data.median_price
  console.log(data)
  

  for (var key in mprice) {
    if(key == 'florida'){
    state_names.push(key);
    price.push(mprice[key]);
}}
 
});

console.log(state_names)
console.log(price)


 

 
