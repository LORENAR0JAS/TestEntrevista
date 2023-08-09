<html>
<head>
<link rel="stylesheet" href="estilos.css">

</head>


<script type="text/javascript" src="jquery-3.7.0.min.js"></script>
<script type="text/javascript">
    function mostrar(){
        $('#flotante').css('display', 'block');
    }

    function cerrar(){
       $('#flotante').css('display', 'none');
    }
    
    function realizaProceso(){
       
        $.ajax({
                
                url:   'ConsultaBD.php',
                type:  'post',
                beforeSend: function () {
                        $("#resultado").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                        $("#resultado").html(response);
                }
        });
}
</script>
<body>
<div><h1>Prueba de entrevista </h1></div>
<input type="button" href="javascript:;" onclick="realizaProceso();return false;" value="Mostrar boton de javascript"/>
 

 
<h1>Datos:</h1> <span id="resultado">0</span>
	

    </body>
</HTML>