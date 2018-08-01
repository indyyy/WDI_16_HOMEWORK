// defining the callback function that will happen
// if the request succeeds.
function onSuccess(responseData) {
  console.log(responseData)
  responseData.Search.forEach(function(movie)
  {console.log(movie.Title)

    $('.movielist').append($('<p>').text(movie.Title));


  });
  
  //console.log("test");
  // celebrate!
};


//var moviename = $('input').val();
//  console.log(moviename);
//var moviesearch = $('input').val();
//console.log(moviesearch);

// var moviesearch = $('input').val().on("change", function(){

$('input').on("change",function() {
  moviesearch = $('input').val()


//document.querySelector("input").addEventListener("change",//function(){
  
  //var moviesearch=document.querySelector("input").value
  //console.log(moviesearch)



$.ajax({


// What kind of request
method: 'GET',

// The URL for the request
url: "http://omdbapi.com/?s="+moviesearch+"&apikey=2f6435d9",
//http://omdbapi.com/?t=#{movieinput}&apikey=2f6435d9")

// The type of data we want back
dataType: 'json',

// Code to run if the request succeeds; the JSON
// response is passed to the function as an argument.
}).done(onSuccess);

})
