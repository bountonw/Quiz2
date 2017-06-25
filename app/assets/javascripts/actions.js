$(document).ready( function() {
  $(".place").hover(
    function() {
      $(this).find(".edit").css("display", "inline");
      $(this).find("#icon-edit").on('click', function() {

      });
    }, function() {
      $(this).find(".edit").css( "display", "none" )();
    }
  );
});