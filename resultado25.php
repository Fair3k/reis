<div align = "center">

<html>
	<head>
		<title>Quadrado entre numeros selecionados</title>

    <style>
      table, tr{
        text-shadow: 0.1em 0.1em 0.3em black;
        border-spacing: 0px;
        margin: -10px 0px 0px 0px;
        border: 2px outset blue;
        background: grey;
      }
      th{
        text-shadow: 0.1em 0.1em 0.3em black;
        border-spacing: 0px;
        margin: 0px 0px 0px 0px;
        border: 2px outset blue;
      }
    </style>

    <meta charset="UTF-8"/>
	</head>

<body>
  <a href="formulario25.php"><input type="button" value="Voltar" /></a><br>
  <a href="index.php"><input type="button" value="Pagina Inicial" /></a><br>

<?php

/*Author: Rafael Reis & Leonardo Camargo
	Date: 09/05/2017
**/
    $l = 1;
    $i = 1;

		$j = 1;
  for($j = 1; $j <= 10; $j++){
?>

        <table style="witdh:100%">
          <tr>
            <th>

<?php
              echo "<b><font color='white'>Tabuada do ".$l."</font></b>";
              $l++;
?>

            </th>
          </tr>

<?php

      for($i = 1; $i <= 10; $i++){

?>
          <tr>
            <td>
              <div align = "center">

<?php

        $tab = $i * $j;
        echo $j." x ".$i." = ".$tab."\t<br>";

?>
              </div>
            </td>
          </tr>

<?php

      }
      echo "<br>";

?>

        </table>

<?php

  }

?>


</div>
</body>
</html>
