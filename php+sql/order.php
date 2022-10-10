<?php
session_start();
$fname= $_POST["fname"];
$lname= $_POST["lname"];
$address= $_POST["address"];
$mobile= $_POST["mobile"];
$servername="localhost";
$username="root";
$password="clover584615";
$dbname="shop";
$con=mysqli_connect($servername,$username,$password,$dbname);
if(!$con) die("Connnect mysql database fail!!".mysqli_connect_error());
//echo "Connect mysql successfully!";
$sql="INSERT INTO order_product (fname, lname,address,mobile)";
$sql.="VALUES ('$fname', '$lname', '$address','$mobile');";
//echo $sql;
if (mysqli_query($con, $sql)) {
    $last_id = mysqli_insert_id($con);
    //echo "New record created successfully. Last inserted ID is: " . $last_id;
    // loop in session cart and insert each item to database
    $sql1="INSERT INTO order_details (order_id,product_id) VALUES ";
    for($i=0;$i<count($_SESSION["cart"]);$i++){
        $item_id=$_SESSION["cart"][$i]['id'];
        $sql1.="('$last_id','$item_id')";
        if($i<count($_SESSION["cart"])-1)
         $sql1.=",";
        else
         $sql.=";";
    }
    //echo $sql1;
    if(mysqli_query($con,$sql1)) {
      echo "บันทึกข้อมูลการสั่งซื้อเรียบร้อยแล้ว";
      
      $sql2="SELECT * FROM `order_product`,`order_details`,`product` WHERE `order_product`.id=`order_details`.order_id AND `order_details`.product_id =  `product`.id AND `order_product`.id=$last_id";
      $result=mysqli_query($con,$sql2);
      if(mysqli_num_rows($result)>0){
        $total=0;
        echo "<table border=1><tr><th>fname</th><th>lname</th><th>address</th><th>mobile</th><th>price</th><th>date time</th></tr>";
        while($row=mysqli_fetch_assoc($result)){
            echo "<tr><td>".$row["fname"]."</td><td>".$row["lname"]."</td><td>";
            echo $row["address"]."</td><td>".$row["mobile"]."</td><td>";
            echo $row["price"]."</td><td>".$row["date_time"]."</td>";
            $total+=$row["price"];
        }
        echo "</table>";
        echo "ราคาสินค้า $total บาท";
    }else{
        echo "0 results";
    }
    }
    else "เกิดข้อผิดพลาดในการสั่งซื้อ";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
  
  mysqli_close($conn);
//$result=mysqli_query($con,$sql);
//$numrow=mysqli_num_rows($result);
?>