$("#form").submit(function() {
    if($("#campo").val()== null || $("#campo").val() ==""){
        alert('campo vazio');      
        return false;
    }
});