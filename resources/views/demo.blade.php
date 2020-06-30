<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        table, th, td {
          border: 1px solid black;
          border-collapse: collapse;
        }
        th, td {
          padding: 5px;
          text-align: left;    
        }
        </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

    <?php
    $server_username = "root";
    $server_password = "";
    $server_host = "localhost";
    $database = 'gps';
    $conn= mysqli_connect($server_host,$server_username,$server_password,$database);
    $query = "SELECT * FROM deviceroute";
    $results = mysqli_query($conn,$query);
    $mess = "SELECT * FROM gps_message";
    $message_result = mysqli_query($conn,$mess);
    ?>
    <h2>Message</h2>
    <?php
    while($x=mysqli_fetch_array($message_result,MYSQLI_ASSOC))
    {
        echo($x['id']); echo(": ");  echo($x['mess']);
        ?>
        <br>
        <?php
    }
    ?>
    <br>
    <table style="width:100%">
        <tr>
          <th>ID</th>
          <th>Latitude</th>
          <th>Longitude</th>
        </tr>
    <?php 

    while($a=mysqli_fetch_array($results,MYSQLI_ASSOC))
        {
            ?>
                
                    <tr>
                      <td><?php echo($a['id']); ?></td>
                      <td><?php echo($a['latitude']); ?></td>
                      <td><?php echo($a['longitude']); ?></td>
                    </tr>
                  
            <?php
            
          
            
        }
        ?>
            </table>
            <?php
?>
            

</body>
</html>