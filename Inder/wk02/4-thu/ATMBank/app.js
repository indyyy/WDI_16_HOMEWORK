
   
   
   var savingBalance = 0;
   var checkingBalance = 0;
   
   var savingInput = document.querySelector('.inputBoxSav')
   var checkingInput = document.querySelector('.inputBoxCheck')

   var depBtnSav = document.querySelector('.dep-btnsav')
   var wdrawBtnSav = document.querySelector('.wdraw-btnsav')

   var depBtnCheck = document.querySelector('.dep-btncheck')
   var wdrawBtnCheck = document.querySelector('.wdraw-btncheck')

   var balanceBoxSav = document.querySelector('.balanceBoxSav')
   var balanceBoxCheck = document.querySelector('.balanceBoxCheck')

   var depositsav = function() {
       savingBalance = savingBalance + Number(savingInput.value)
       balanceBoxSav.textContent = savingBalance
       savingInput.value=0
   }

   var withdrawsav = function() {
       savingBalance = savingBalance - Number(savingInput.value)
       balanceBoxSav.textContent = savingBalance
       savingInput.value=0
   }

   var depositcheck = function() {
       checkingBalance = checkingBalance  + Number(checkingInput.value)
       balanceBoxCheck.textContent = checkingBalance
       checkingInput.value=0
   }

   var withdrawcheck = function() {
       checkingBalance = checkingBalance - Number(checkingInput.value)
       balanceBoxCheck.textContent = checkingBalance
       checkingInput.value=0
   }
   
   depBtnSav.addEventListener('click',depositsav)
   wdrawBtnSav.addEventListener('click',withdrawsav)
   depBtnCheck.addEventListener('click',depositcheck)
   wdrawBtnCheck.addEventListener('click', withdrawcheck)

   /*
   var num1Input = document.querySelector('.num1-input')

    var num2Input = document.querySelector('.num2-input')

    var resultDiv = document.querySelector('.result-div')

    var calcBtn = document.querySelector('.calc-btn')

    var add = function() {
        var total =  Number(num1Input.value) + Number(num2Input.value)
        resultDiv.textContent = total
    }

   // calcBtn.addEventListener('click', add)

    document.querySelector('.calc-btn').addEventListener("click", add)

    */