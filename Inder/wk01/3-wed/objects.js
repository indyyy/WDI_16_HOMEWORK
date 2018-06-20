
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

// THE READING LIST

var bookTrack = {
    title: 'Snoopy goes to Vegas',
    author: 'Ian Fleming',
    alreadyRead: [false]
}

console.log(bookTrack.alreadyRead)

if (bookTrack.alreadyRead==true) {
    console.log("you already read " + bookTrack.title)
}
    else {
    console.log("you still have to read " + bookTrack.title)
    }



// THE MOVIE DATABASE - CREATE A FUNCTION

function printMovie() { 

    var movie = {
        title: 'The Simpsons Movie',
        duration: 30,
        stars: ["Homer", "Bart"]
    }
    console.log(movie.title + " lasts for " + movie.duration + " minutes. Stars: " + movie.stars)
}
 printMovie()