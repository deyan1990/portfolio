<?php
include("header.php");
?>

<?php
$comments = $db->query("SELECT * FROM comments ORDER BY project_id ASC");
while ($kea_projects = $projects->fetchObject()){

    ?>
<a href="project.php?id=<?php echo $kea_projects->project_id;?>"><!--<div class="folio border-class">--><div class = "folio border-class portfolio-box"><?php echo $kea_projects->header;?><br>
    <img class="img-inside-h2" src="img/<?php  echo $kea_projects->image?>">
</div><!--</div>--></a>
<?php
$project_id = $kea_projects->project_id;
}



?>


  <!-- end .container -->
 </div>

</body>
</html>
