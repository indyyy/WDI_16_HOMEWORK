

$( "#selectcolor" ).click(function() {
  var userInput = $('#inputcolor').val().trim();
  console.log(userInput)
  $('.brush').attr('style','background:'+userInput);
  event.preventDefault();
});