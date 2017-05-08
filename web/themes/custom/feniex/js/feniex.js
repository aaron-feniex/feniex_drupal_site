/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function navFunction() {
  if ($("#navDropdown").hasClass("dropdown-content")) {
    document.getElementById("navDropdown").classList.toggle("show");
    // $(this).children('.dropdown-content').slideDown(200);
    $("#navDropdown").animate({right: "0"}, 600);
  } else {
    $("#navDropdown").animate({left: "0"}, 600);
    document.getElementById("navDropdown").classList.toggle("dropdown-content");
    alert("Yo")
  }
}




// // Close the dropdown menu if the user clicks outside of it
// window.onclick = function(event) {
//   if (!event.target.matches('.dropbtn')) {

//     var dropdowns = document.getElementsByClassName("dropdown-content");
//     var i;
//     for (i = 0; i < dropdowns.length; i++) {
//       var openDropdown = dropdowns[i];
//       if (openDropdown.classList.contains('show')) {
//         openDropdown.classList.remove('show').slideDown(3000);
//       }
//     }
//   }
// }



// HAMBURGER BAR COLLAPSE
function menuFunction(x) {
    x.classList.toggle("change");
}


// function navFunction() {
//     $("#navDropdown").animate({right: "0"}, 600);
// }


// $(document).ready(function() {
//     $("#navDropdown").animate({right: "0"}, 5000);
// });



// $("a").on('click', function(event) {
//     $("#one").animate({left: "0"}, 2000);
//     $("#two").animate({left: "0"}, 2250);
//     $("#three").animate({left: "0"}, 2500);
// });



// $(document).ready(function(){
//     $(".dropbtn").on('click',function(){
//         $("#navDropdown").slideDown(3000);
//     });
// });