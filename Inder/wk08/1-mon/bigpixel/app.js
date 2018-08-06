

$( "#selectcolor" ).click(function() {
  var userInput = $('#inputcolor').val().trim();
  console.log(userInput)
  $('.brush').attr('style','background:'+userInput);
  event.preventDefault();
});

for (i = 0; i < 1000; i++) {
  $( "body" ).append( "<div class='square'></div>" );
}