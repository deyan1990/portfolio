<?php 
include("header.php");
$author = $_POST['author'];
$email = $_POST['email'];
$comment_text = $_POST['text'];
$project_id = $_POST['project_id'];
echo($project_id);
$comment_edit = $_POST['password'];
echo ($author.$email.$comment_text.$project_id );
$stmt = $db->prepare("INSERT INTO `comments`(`project_id`, `created_at`, `author`, `email`, `comment_text`) VALUES (:project_id,NOW(),:author,:email,:comment_text)");
$stmt->bindValue(':author',$author);
$stmt->bindValue(':email',$email);
$stmt->bindValue(':comment_text', $comment_text);
$stmt->bindValue(':project_id', $project_id);
$stmt->execute();
?>