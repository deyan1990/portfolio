
<?php
include("header.php");


$work = $_GET['id'];
$stm = $db -> prepare("SELECT * FROM `deliveries` WHERE module_id = :my_id");
$stm -> bindValue(":my_id",$work);

$stm -> execute();

while ($product = $stm-> fetchObject()){
$op=$product -> link;
?>
<div class="matush">
<h2><?php echo $product->header;?></h2>
<h3><?php echo $product ->description;?></h3>
<h3><?php echo $product ->reflection;?></h3>
<img src="img/<?php echo $product ->image;?>"></img>
<?php if($op!=""){

?>
<h3><a href="<?php echo $product -> link;?>">Click me</a></h3>
 
<?php
}
    ?>
</div>
<?php
   
                                    }
?>
<?php
 include("comments.php");  
?>
  
</body>
</html>