// Start of .js file

var timer = {
    // All your code goes in here...
}

var seconds = 0
var timerId = 0
var intervalID = 0

  var resetBtn = document.querySelectorAll("#reset")[0]
  var startBtn = document.querySelectorAll("#start")[0]
  var pauseBtn = document.querySelectorAll("#pause")[0] 

var startFunc = function() {
    console.log('jgjgh')
    intervalID =  setInterval(updateTime, 1000)
  }


  var updateTime = function() {
    seconds = seconds + 1
    var timerSec = document.querySelectorAll('#timer')
    timerSec[0].innerText=seconds
  }

  function resetFunc() {
   clearInterval(intervalID)
   // reset the timer //
   var timerSec = document.querySelectorAll('#timer')
    timerSec[0].innerText="Stop Watch"
  }
 

  function pauseFunc() {
      clearInterval(intervalID)

  }

  

  resetBtn.addEventListener('click', resetFunc)
  startBtn.addEventListener("click", startFunc)
  pauseBtn.addEventListener('click', pauseFunc)

  


  