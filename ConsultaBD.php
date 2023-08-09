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
</script>
<body>





  
  <div id="content">
        <p><h2><a href="javascript:mostrar();">Mostrar</a></h2></p>
        <div id="flotante" style="display:none;">
            <div id="close"><a href="javascript:cerrar();"><h2>Ocultar</h2></a></div>
             <?php 

echo
"<table class='table1'> <tr>
        <th>&nbsp;</th>
        <th>IDT1</th>
        <th>CAMPO1t1</th>
        <<th>IDT2</th>
        <th>CAMPO1t2</th>
	<th>IDT3</th>
        <th>CAMPO1t3</th>
    </tr>";

$mysqli = new mysqli('127.0.0.1', 'root', '', 'testcf');
$mysqli->set_charset("utf8");

$res = $mysqli->query("SELECT 
tabla1.Id as id,
tabla1.campo1 as campo1,
tabla2.ID as campo2,
tabla2.IDTABLA1 as campo3,
tabla3.ID as campo4,
tabla3.IDTABLA1 as campo5

FROM tabla1
INNER JOIN tabla2
ON tabla2.idtabla1 = tabla1.Id 
INNER JOIN tabla3
ON tabla3.idtabla1= tabla3.Id");

while($f = $res->fetch_object()){

 echo "<tr>
<th>&nbsp;</th>
        <tH> ".$f->id."</tH>.";
echo " <tH>".$f->campo1."</tH>";
echo " <tH>".$f->campo2."</tH>";
echo " <tH>".$f->campo3."</tH>";
echo " <tH>".$f->campo4."</tH>";

echo " <tH>".$f->campo5."</tH></tr>";
     




}
echo "</table>";


?>
        </div>
    </div>
    
    
<div class="div" id="uno">
        
    </div>
    </body>
</HTML>