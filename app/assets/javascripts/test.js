var ready;
ready = function () {
  document.getElementById("wrong_1").onclick = function(){
    alert('WRONG!');
  }
  document.getElementById("wrong_2").onclick = function(){
    alert('WRONG!');
  }
  document.getElementById("wrong_3").onclick = function(){
    alert('WRONG!');
  }
  document.getElementById("wrong_4").onclick = function(){
    alert('WRONG!');
  }
  document.getElementById("wrong_5").onclick = function(){
    alert('WRONG!');
  }
  document.getElementById("wrong_6").onclick = function(){
    alert('WRONG!');
  }
  document.getElementById("right").onclick = function(){
    alert('Correct!');
    window.location.href = document.URL.slice(0, document.URL.indexOf("?")+1) + 'page=' + (parseInt(document.URL.slice(document.URL.indexOf("=")+1))+1) ;
  }
}

 $(document).ready(ready)
 $(document).on('page:load', ready)
