<?php 
$db = new PDO("mysql:host=localhost; dbname=kea_projects", "root","");
$projects = $db->query("SELECT project_id, header,project_type,used_skills,description,reflection,image FROM projects ORDER BY project_id ASC");
$deliveries = $db->query ("SELECT * FROM deliveries ORDER BY deliveri_id ASC");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Travel Pictures</title>

<style type="text/css">
z
</style>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div class="container">
<div class="header">
<div>
    <a href="index.php"><img src="img\menu\Final.png" id="logo" alt="me" /></a>
  <h1> Deyan's Travel Pictures </h1>
    </div>
    <div align="center">
      
                <ul id="menu">
        <li><a href="index.php"><img src="img\menu\Home2.png" alt="me"></img></a></li>
        <li><a href="Portfolio.php?module_id="><img src="img/menu/Portfolio.png" alt="me"></img></a></li>
        <li><a href="Pictures.php"><img src="img\menu\Picture_of_places.PNG" alt="me"></img></a></li>
        <li><a href="Favorite_photos.php"><img src="img\menu\Favorite_photos.png" alt="me"></img></a></li>           
    <li><a href="myfriends.php"><img src="img\menu\Friends.png" alt="me"></img></a></li>
        <li><a href="about.php"><img src="img\menu\about_me.PNG" alt="me"></img></a></li>
        
</ul>
</div>
    </div>
</body>