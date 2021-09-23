
var state_names = [];
var state_names2 = []
var price = [];
var avg_price = []
var when = []
console.log("Hello")
d3.json("/page3").then(function(data) { 
  
 //console.log(st_data)
  



for (var object in data) {
    if (data[object].states = "California"){
  state_names.push(data[object].states);
  price.push(data[object].median_listing_price);
  avg_price.push(data[object].average_listing_price);
  when.push(data[object].month_date_yyyymm)
    }
}


console.log(state_names);
console.log(when)
console.log(price);

console.log(avg_price);

});



 

 
