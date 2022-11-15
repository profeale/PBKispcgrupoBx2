function onEnviar(){
    let form = document.getElementById("myform");
    let email = document.forms["myform"]["floatingInput"].value;
    let password = document.forms["myform"]["floatingPassword"].value;
      
        if (form.checkValidity()){
            alert("mail y contraseña correctas")
        }
    }

