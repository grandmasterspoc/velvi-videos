// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-sprockets
//= require_tree .


// When the user clicks the button, open the modal
// $(document).ready(function() {
//   $("#creatingVideoBtn").click(function() {
//       $('.modal').style.display = "block";
//   });
// });

setInterval(function() {
    $.get("https://velvi-videos.herokuapp.com");
}, 300000); // every 5 minutes (300000)
