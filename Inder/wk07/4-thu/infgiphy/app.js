//javascript, jQuery
//var xhr = $.get("http://api.giphy.com/v1/gifs/search?q=ryan+gosling&api_key=fL6kagJwDk7Cc3oSiiDM4G2FwdiJ2ESA&limit=5");
//xhr.done(function(data) { console.log("success got data", data); });

//'&api_key=dc6zaTOxFJmzC';

        // Part 2 - Use AJAX to call GIPHY API (note that the .done() function waits for the API to respond)
        
        
        
// Get User Input to Search Giphy.com
          $('.search_button').on('click', function(){
            var userInput = $('#form-value').val().trim();
            
            userInput = userInput.replace(/ /g, "+");

            offset = 0
            
// Clean User Input to get ready to pass to Giphy.com
            
            var queryURL = 'http://api.giphy.com/v1/gifs/search?q=' + userInput + '&api_key=fL6kagJwDk7Cc3oSiiDM4G2FwdiJ2ESA&limit=10&offset='+offset;

// Call the GiphyAPI with the clean search argument for first 10 records
            giphyAPI(queryURL)

// Check to see if user has scrolled to the bottom.  If the document size is same as the scrolling size then bottom has been reached.

// Once bottom is reached then retrieve the next 10 records           
            $(window).scroll(function() {
              if ($(window).scrollTop()+$(window).height()==$(document).height()) 
                {offset = offset + 1
                queryURL = 'http://api.giphy.com/v1/gifs/search?q=' + userInput + '&api_key=fL6kagJwDk7Cc3oSiiDM4G2FwdiJ2ESA&limit=10&offset='+offset
                giphyAPI(queryURL);
                console.log(queryURL)
              }
            })

            return false;
          })


          

        function giphyAPI (queryURL) {

            $.ajax({url: queryURL, method: 'GET'}).done(function(response)
            {
              // This is the API response data. 
              console.log(response.data)


              
              //$('.displaygiphy').children('img').attr('src', giphyURL)
              response.data.forEach(function(element){
                var giphyURL = element.images.fixed_height.url;
                console.log(giphyURL)
                $('.displaygiphy').append("<img src="+giphyURL+">");
              })

              
            })
          }
      


    
