<?php

require('../phpMQTT.php');

$server = '52.187.125.59';     // change if necessary
$port = 1883;                     // change if necessary
$username = 'BKvm';                   // set your username
$password = 'Hcmut_CSE_2020';                   // set your password
$client_id = 'phpMQTT-publisher'; // make sure this is unique for connecting to sever - you could use uniqid()
$mqtt = new Bluerhinos\phpMQTT($server, $port, $client_id);

// if ($mqtt->connect(true, NULL, $username, $password)) {
// 	$mqtt->publish("Topic/GPS","Da ket noi thanh cong GPS value =100",0);
// 	$mqtt->close();
// } else {
//     echo "Time out!\n";
// }
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
	<form action="" method="post">	
		<label>Nhập số liệu:</label><br>
		<input type="text" id="name" name="name">
		<input type="submit" value="Submit">
		<div>
			<?php
				if ($mqtt->connect(true, NULL, $username, $password)) {
					$mqtt->publish("Topic/LightD", $_POST['name'],0);
					$mqtt->close();
					echo("Đã publish");
				} else {
					echo "Time out!\n";
				}
			?>
		</div>
	</form>
</body>
</html>
