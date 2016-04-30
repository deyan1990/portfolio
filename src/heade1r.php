<?php
$db = new PDO("mysql:host=sql303.byethost22.com; dbname=b22_16145479_portfolio1", "b22_16145479","deyan1990");
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$projects = $db->query("SELECT project_id, header,project_type,used_skills,description,reflection,image FROM projects where public = 0 ORDER BY project_id ASC");
$deliveries = $db->query ("SELECT * FROM deliveries ORDER BY deliveri_id ASC");
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Travel Pictures</title>

<style type="text/css">

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
        <li><a href="index.php">Home</a></li>
        <li><a href="Portfolio.php?module_id=">Portfolio</a></li>
        <li><a href="Pictures.php">Pictures of Places</a></li>
        <li><a href="Favorite_photos.php">Favorite Photos</a></li>
    <li><a href="myfriends.php">My Friends</img></a></li>
        <li><a href="about.php">About Me</a></li>

</ul>
</div>
    </div>
