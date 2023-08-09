<?php 
//include ("conexionBD.php"); 

echo
"<tr>
<td>ID</td><br>";

$mysqli = new mysqli('127.0.0.1', 'root', '', 'testcf');
$mysqli->set_charset("utf8");

$res = $mysqli->query("SELECT 
tabla1.Id as id,
tabla1.campo1 as campo1,
tabla2.campo1,
tabla2.campo2,
tabla3.campo1,
tabla3.campo2

FROM tabla1
INNER JOIN tabla2
ON tabla2.idtabla1 = tabla1.Id 
INNER JOIN tabla3
ON tabla3.idtabla1= tabla3.Id");

while($f = $res->fetch_object()){

 echo "<tr>

        <td> es el campo id".$f->id."</td>...";
        echo "<td>".$f->campo1."</td></tr>";
     




}

/*
while($f = $res->fetch_object()){

    echo $f->id.' <br/>';
echo $f->campo1.' <br/>';
}

$query_buscar_posts = mysqli_query($conn, "
SELECT 
tabla1.Id,
tabla1.campo1,
tabla2.campo1,
tabla2.campo2,
tabla3.campo1,
tabla3.campo2

FROM tabla1
INNER JOIN tabla2
ON tabla2.idtabla1 = tabla1.Id 
INNER JOIN tabla3
ON tabla3.idtabla1= tabla3.Id
WHERE tabla1.User_Id = $my_id") or die('Error: ' . mysqli_error($conn));
*/
?>