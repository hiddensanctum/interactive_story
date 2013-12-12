var ready;
ready = function () {
  var next_page = function(){
    window.location.href = document.URL.slice(0, document.URL.indexOf("?")+1) + 'page=' + (parseInt(document.URL.slice(document.URL.indexOf("=")+1))+1) ;
  }
  $(document).bind("keydown", "right", next_page);
  $(".next_page").click(next_page);

  console.log("something");
}
function rightAnswer(){
  alert('Correct!');
  if (document.URL.indexOf("?") > -1 ){
    window.location.href = document.URL.slice(0, document.URL.indexOf("?")+1) + 'page=' + (parseInt(document.URL.slice(document.URL.indexOf("=")+1))+1) ;
  }
}

function wrongAnswer(){
  alert('WRONG!');
}

 $(document).ready(ready)
 $(document).on('page:load', ready)
 console.log("something");
