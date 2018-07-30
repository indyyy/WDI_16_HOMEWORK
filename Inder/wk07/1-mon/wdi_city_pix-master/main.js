var city = ['NYC', 'SF', 'LA', 'SYD', 'ATX']
var cityclass=['nyc', 'sf', 'la', 'sydney','austin']

cityselect = document.querySelectorAll("#city-type")

var option =[]

for (i=0; i<city.length; i++) { 
option[i] = document.createElement("option");
option[i].text=city[i]
cityselect[0].appendChild(option[i]);
}
previndex=0
document.querySelector('select').addEventListener('change',function(ev) {
  index = city.indexOf(ev.target.value)
  document.body.classList.remove(cityclass[previndex])
  document.body.classList.add(cityclass[index])
  previndex = index
})
 



