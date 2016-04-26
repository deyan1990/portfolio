<h3>Lastest Comments</h3>
        <?php 
$project_id = $_GET['id'];
$pointer=$db->prepare("SELECT * FROM comments WHERE project_id =:myid ORDER BY created_at DESC");
$pointer->bindValue(":myid",$project_id);
$pointer->execute();
while($comment = $pointer->fetchObject()){
    ?>
    <li><a href="Portfolio.php?project_id="><?php echo $comment->header;?> by 
        <?php echo $comment->author;?> by 
        <?php echo $comment->comment_text;?></a></li>
        <?php
    
}
?>
<form action="insert_comments.php" method="post">
      <ul>
    <li>
    Name
    <input type="text" name="author">
</li>
    <li>
    Email
        <input type="email" name="email">
    </li>
    <li>
    Password
        <input type="password" name="password"
    </li>
    <li>
        Text
        <textarea name="text"></textarea>
    </li>
    <input type="hidden" name="project_id" value="<?php echo ($project_id)?>">
    <input type="submit" value="Submit">
</ul>
    </form>

