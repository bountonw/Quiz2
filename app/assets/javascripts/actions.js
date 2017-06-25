$(document).ready( function() {
  $(".place").hover(function() {
      $(this).find(".edit").css("display", "inline");
      $(this).find("#icon-delete").on('click', function() {
        $.ajax({
          url : ('/places/' + p.id),
          type: 'DELETE',
          head :no_content,
          success: function(result) {
              alert("success");
          }
        });
      });
    }, function() {
      $(this).find(".edit").css( "display", "none" )();
    }
  );
});