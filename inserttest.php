<?php
$server_username = "root";
$server_password = "";
$server_host = "localhost";
$database = 'devmarketer';
$conn= mysqli_connect($server_host,$server_username,$server_password,$database);
if(!$conn)
{
	die("Lỗi kết nối dữ liệu");
	exit();
}
mysqli_query($conn,"SET NAMES 'UTF8'");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>  
<div>
			<h1>adsfsdfs</h1>
            <?php 
                $id = rand(1,1000);
				$query = "INSERT INTO messgps(id,mess,dateGPS) VALUES({$id},'abc',NULL)";
				$results = mysqli_query($conn,$query);
			
			?>
		</div>
</body>
</html>




