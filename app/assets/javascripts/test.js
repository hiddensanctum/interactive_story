var ready;
ready = function () {
  $(document).bind('keydown', 'right', function() {
    console.log('hi')
    $(".next_page").click();
  });

  $(document).bind('keydown', 'left', function() {
    $(".previous_page").click();
  });
}
function rightAnswer(){
  alert('Correct!');
  if (document.URL.indexOf("?") > -1 ){
    window.location.href = document.URL.slice(0, document.URL.indexOf("?")+1) + 'page=' + (parseInt(document.URL.slice(document.URL.indexOf("=")+1))+1) ;
  }
}

function wrongAnswer(){
  alert('Nope, Try Again!');
}

 $(document).ready(ready)
 $(document).on('page:load', ready)
