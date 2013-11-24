$(document).ready(function() {
  $(".square .btn-info").on("click", function(event) {
    event.stopPropagation();
    event.preventDefault();
    $(this).find("#book-name").fadeIn('fast');
                ("#book-description").fadeIn('fast');
    $('#box-image').hide();
  });
  });
});
