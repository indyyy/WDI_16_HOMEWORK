const express = require('express')
const _ = require('lodash')
const app = express()
const PORT = 7777
app.set('view engine','ejs')

app.use(express.static('public'))

compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Shut up and take my money",
  "It's almost beer o'clock",
  "The Force is strong with you"
]

dtcompliments = [
  "Be back at 2:10",
  "pudding is a yummy password",
  "I want to paint my kitchen mistyrose",
  "2 for 1 at BurgerProject today guys"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

dtcolors = ["#FFBFAA", "#0080AA","#01DFAA","#FF00FF"]

onecompliment=_.sample(compliments)
onecolor = _.sample(colors)
dtcompliment=_.sample(dtcompliments)
dtcolor = _.sample(dtcolors)



app.get('/', (req, res) => { 
  res.render('index', {compliment: onecompliment, color: onecolor})
})

app.get('/dt', (req, res) => {
  res.render('index', {compliment: dtcompliment, color: dtcolor})
})

app.listen(PORT, () => {
  // backticks ` below
  console.log(`listening at port ${PORT}`)
})