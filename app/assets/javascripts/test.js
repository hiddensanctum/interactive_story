var ready;
ready = function () {
  document.getElementById("right").onclick = function(){
    alert('Correct!');
    window.location.href = document.URL.slice(0, document.URL.indexOf("?")+1) + 'page=' + (parseInt(document.URL.slice(document.URL.indexOf("=")+1))+1) ;
  }
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
