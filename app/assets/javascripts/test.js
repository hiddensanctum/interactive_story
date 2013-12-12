var ready;
ready = function () {

  $(document).bind('keydown',function(e){
    key  = e.keyCode;
    if(key == 39){
      document.location.href = $("a.next_page")[0].href;
      return false;
    }else if(key == 37){
      document.location.href = $("a.previous_page")[0].href;
      return false;
    }
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
 console.log("something");
