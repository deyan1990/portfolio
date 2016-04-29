<?php
$db = new PDO("mysql:host=localhost; dbname=kea_projects", "root","");
$projects = $db->query("SELECT project_id, header,project_type,used_skills,description,reflection,image FROM projects ORDER BY project_id ASC");
$deliveries = $db->query ("SELECT * FROM deliveries ORDER BY deliveri_id ASC");
?>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Travel Pictures</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div class="container">
<!-- <div class="header"> -->
<header>

  <h1> <a href="index.php"><img src="img\menu\Final.png" id="logo" alt="me" /></a> Deyan's Travel Pictures </h1>
    <!-- </div> -->
    <nav align="center">
        <ul id="menu">
          <li><a href="index.php">Home</a></li>
          <li><a href="Portfolio.php?module_id=">Portfolio</a></li>
          <li><a href="Pictures.php">Pictures of Places</a></li>
          <li><a href="Favorite_photos.php">Favorite Photos</a></li>
          <li><a href="myfriends.php">My Friends</img></a></li>
          <li><a href="about.php">About Me</a></li>
        </ul>
    </nav>
</header>
<!-- </body> -->
