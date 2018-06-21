
// EXERCISE: OBJECTS

// THE RECIPE CARD

var recipe = {
    title: 'Mole',
    servings: 2,
    ingredients: ['cinnamon', 'cumin', 'cocoa']
}

console.log(recipe.title)
console.log("Serves: " + recipe.servings)
console.log("Ingredients:")
console.log(recipe.ingredients[0])
console.log(recipe.ingredients[1])
console.log(recipe.ingredients[2])

//console.log(recipe.ingredients.join('\n')

// THE READING LIST

var bookTrack = [
{
    title: 'Snoopy goes to Vegas',
    author: 'Ian Fleming',
    alreadyRead: [false]
}
]

console.log(bookTrack[0].alreadyRead)

if (bookTrack[0].alreadyRead==true) {
    console.log("you already read " + bookTrack[0].title)
}
    else {
    console.log("you still have to read " + bookTrack[0].title)
    }
book = bookTrack[0];


// THE MOVIE DATABASE - CREATE A FUNCTION

function printMovie() { 

    var movie = {
        title: 'The Simpsons Movie',
        duration: 30,
        stars: ["Homer", "Bart"]
    }
    console.log(movie.title + " lasts for " + movie.duration + " minutes. Stars: " + movie.stars)
}
// var movieInfo = function(movie) {
// return movie.title + 'last for ' + movie.duration + movie.stars.join(',')
// 
 printMovie()
// f(x)

var combineWords = function(word1, word2) {
    return word1 + word2;
}

var newWord = combineWords('slack', 'ers');
console.log(newWord)


var calculateAge = function(currentYear, birthYear) {
   return (currentYear-birthYear) 
}
var age = calculateAge(2018, 2000);
console.log(age)

//  3. Write a function `lengths` that accepts a single parameter as an argument, namely
// an array of strings. The function should return an array of numbers where each
// number is the length of the corresponding string.

var thisarray=[];

var lengths = function(thisarray) {
    return  thisarray.length;
}
 var msg = lengths('string');
 console.log(msg)


 // 4. Write a Javascript function called `transmogrifier`
// This function should accept three arguments, which you can assume will be numbers.
// Your function should return the "transmogrified" result
//
// The transmogrified result of three numbers is the product of the first two numbers,
// raised to the power of the third number.

var transmogrifier = function(num1, num2, num3) {
    return Math.pow((num1*num2),num3)
}

var result = transmogrifier(3,3,2);
console.log(result)

// 5. Write a function `wordReverse` that accepts a single argument, a string. The
// method should return a string with the order of the words reversed. Don't worry
// about punctuation.

var sentence=[];
var wordReverse = function(sentence) {
    holder = sentence.split(' ')
    var revholder = []
    m=holder.length 
    for (i=0; i<holder.length; i++ ) {
        revholder.push(holder[m-1])
        m--
    }
    return revholder;
}
 var reversemsg = wordReverse('This is a test');
 console.log(reversemsg)
