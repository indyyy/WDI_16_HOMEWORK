

$( "#resetColor" ).click(function() {
  $('.square').attr('style','background: white');
});

$( "#resetMovie" ).click(function() {
  $('.square').attr('style','background: white');
});

$( "#selectcolor" ).click(function() {
  var userInput = $('#inputcolor').val().trim();
  console.log(userInput)
  $('.brush').attr('style','background:'+userInput);
  event.preventDefault();
});


var theInput = document.getElementById("favcolor");
   theInput.addEventListener("input", function() {
   console.log(theInput.value)
   $('.brush').attr('style','background:'+theInput.value);

    }, false);

for (i = 0; i < 1000; i++) {
  $( ".pixelwrapper" ).append( "<div class='square'></div>" );
}


$('.square').on('click', function(){
  var brushColor = $('.brush').css("background-color");
  console.log(brushColor)
  $(this).css("background-color", brushColor);
});


function onSuccess(responseData) {
  console.log(responseData)
  console.log(responseData.Search[0].Poster)
  $(".pixelwrapper").attr('style','background-image:'+'url('+responseData.Search[0].Poster+')')
  
};

$('#selectmovie').click(function() {
  var moviesearch = $('#inputmovie').val().trim();
  event.preventDefault();
  console.log(moviesearch)
  $.ajax({
    method: 'GET',
    url: "http://omdbapi.com/?s="+moviesearch+"&apikey=2f6435d9",
    dataType: 'json',
    }).done(onSuccess); 
})
