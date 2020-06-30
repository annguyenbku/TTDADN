<?php
$server_username = "root";
$server_password = "";
$server_host = "localhost";
$database = 'gps';
$conn= mysqli_connect($server_host,$server_username,$server_password,$database);
if(!$conn)
{
	die("Lỗi kết nối dữ liệu");
	exit();
}
mysqli_query($conn,"SET NAMES 'UTF8'");
require('../phpMQTT.php');


$server = '52.187.125.59';     // change if necessary
$port = 1883;                     // change if necessary
$username = 'BKvm';                   // set your username
$password = 'Hcmut_CSE_2020';                   // set your password
$client_id = 'phpMQTT-subscriber'; // make sure this is unique for connecting to sever - you could use uniqid()

$mqtt = new Bluerhinos\phpMQTT($server, $port, $client_id);
if(!$mqtt->connect(true, NULL, $username, $password)) {
	exit(1);
}

$mqtt->debug = true;

$topics["Topic/"] = array("qos" => 0, "function" => "procMsg");
$mqtt->subscribe($topics, 0);

while($mqtt->proc()) {

}

$mqtt->close();

// function procMsg($topic, $msg){
// 		echo 'Msg Recieved: ' . date('r') . "\n";
// 		echo "Topic: {$topic}\n\n";
// 		echo "\t$msg\n\n";
// }
function procMsg($topic, $msg){
	?>
		<div>
			<h1><?php echo($msg);?></h1>
			<?php 
				$server_username = "root";
				$server_password = "";
				$server_host = "localhost";
				$database = 'gps';
				$id = rand(1,1000);
				$conn= mysqli_connect($server_host,$server_username,$server_password,$database);
				$query = "INSERT INTO gps_message(id,mess,dateGPS) VALUES(NULL,'{$msg}',NULL)";
				$results = mysqli_query($conn,$query);

				$string =  $msg;
				$string = substr($string,1,-1);
				$str = json_decode($string,true);
				
				$latitude = $str['values'][0];
				$longitude = $str['values'][1];
				$query = "INSERT INTO deviceroute(id,latitude,longitude,Date_update,description_update,created_at,updated_at) VALUES (NULL,'{$latitude}','{$longitude}',NULL,NULL,NULL,NULL)";
				$results = mysqli_query($conn,$query);
			
			// DB::table('message')->insert([
			// 	'mess' => $msg,
			// 	'date' => NULL
			// ]);
			?>
		</div>
		<!-- echo "\n";
		echo "\t$msg\n\n"; -->
	<?php
}
?>



