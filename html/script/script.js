// When the user clicks on <div>, open the popup
$(document).ready(function(){
   setTimeout(function(){
      PopUp();
   },5000); // 5000 to load it after 5 seconds from page load
});

function PopUp() {
  console.log('TEST');
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}


console.log('TEST');