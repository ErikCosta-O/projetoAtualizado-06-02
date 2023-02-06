var myVar;
function myFunction() {
  myVar = setTimeout(showPage, 1000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
function mostrar(){
  alert("Insira email e senha corretamente ok 👍\nEmail nos formatos, @gmail.com, @hotmail.com ou @email.com")
}