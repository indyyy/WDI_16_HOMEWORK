
// AGECALCULATOR

var userCurrentAgeYear = prompt('Current Age Year'); 
var userMaxAgeYear = prompt('Max Age Year');

var amountPerDay = 3;

var Lifetime = ((userMaxAgeYear - userCurrentAgeYear) * amountPerDay * 365); 


console.log('You will need ' + Lifetime + ' to last you until the age of  ' +  userMaxAgeYear);



