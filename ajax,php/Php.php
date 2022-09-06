<!DOCTYPE html>
<html>
<body>
<style>
table, th, td {
  border:1px solid black;
}
</style>
<?php
  class Item
  {
    public $id;
    public $name;
    public $price;
    public $img;
  }
  $Ary_Product=array();
  
  $Ary_Product[0]=new Item();
  $Ary_Product[0]->id='01';
  $Ary_Product[0]->name="Chahan";
  $Ary_Product[0]->price="59B";
  $Ary_Product[0]->img="product_pic/chahan.jpg";

  $Ary_Product[1]=new Item();
  $Ary_Product[1]->id="02";
  $Ary_Product[1]->name="Karaage";
  $Ary_Product[1]->price="59B";
  $Ary_Product[1]->img="product_pic/Karaage.jpg";
  
  $Ary_Product[2]=new Item();
  $Ary_Product[2]->id="03";
  $Ary_Product[2]->name="Gyoza";
  $Ary_Product[2]->price="69B";
  $Ary_Product[2]->img="product_pic/Gyoza.jpg";

  $Ary_Product[3]=new Item();
  $Ary_Product[3]->id="04";
  $Ary_Product[3]->name="Yakisoba";
  $Ary_Product[3]->price="79B";
  $Ary_Product[3]->img="product_pic/yakisoba.jpg";

  $Ary_Product[4]=new Item();
  $Ary_Product[4]->id="05";
  $Ary_Product[4]->name="Miso Ramen";
  $Ary_Product[4]->price="89B";
  $Ary_Product[4]->img="product_pic/miso.jpg";

  $Ary_Product[5]=new Item();
  $Ary_Product[5]->id="06";
  $Ary_Product[5]->name="Shio Ramen";
  $Ary_Product[5]->price="79B";
  $Ary_Product[5]->img="product_pic/Shio.jpg";

  $Ary_Product[6]=new Item();
  $Ary_Product[6]->id="07";
  $Ary_Product[6]->name="Shoyu Ramen";
  $Ary_Product[6]->price="79B";
  $Ary_Product[6]->img="product_pic/shoyu.jpg";

  $Ary_Product[7]=new Item();
  $Ary_Product[7]->id="08";
  $Ary_Product[7]->name="Tonkotsu Ramen";
  $Ary_Product[7]->price="79B";
  $Ary_Product[7]->img="product_pic/tonkotsu.jpg";

  $Ary_Product[8]=new Item();
  $Ary_Product[8]->id="09";
  $Ary_Product[8]->name="Sarusoba";
  $Ary_Product[8]->price="69B";
  $Ary_Product[8]->img="product_pic/Zarusoba.jpg";

  $Ary_Product[9]=new Item();
  $Ary_Product[9]->id="10";
  $Ary_Product[9]->name="Tempura Shoyu Ramen";
  $Ary_Product[9]->price="109B";
  $Ary_Product[9]->img="product_pic/tempura_shoyu.jpg";  

  function  ShowItem($Ary,$r,$g,$b){
    echo"
      <tr style='color:rgb($r,$g,$b)'>
          <td>$Ary->id</td>
          <td>$Ary->name</td>
          <td>$Ary->price</td>
          <td><img src='$Ary->img'width='100px' height='100px'></td>
      </tr>";
  }
  
  echo'
    <table>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th style="width:30%">img</th>
      </tr>';

  foreach($Ary_Product as $Ary_Product){
    $r=rand(0,256);
    $g=rand(0,256);
    $b=rand(0,256);
    ShowItem($Ary_Product,$r,$g,$b);
  }
  
  echo'</table>';
  ?>
</body>
</html>