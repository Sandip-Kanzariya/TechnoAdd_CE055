<?php
  include "config.php";
  
  // check file upload or not

  if(isset($_FILES['fileToUpload'])){
    $errors = array();

    $file_name = $_FILES['fileToUpload']['name'];
    $file_size = $_FILES['fileToUpload']['size'];
    $file_tmp = $_FILES['fileToUpload']['tmp_name'];
    $file_type = $_FILES['fileToUpload']['type'];
    $file_ext = end(explode('.',$file_name)); // end jpg/png....

    $extensions = array("jpeg","jpg","png");

    // search in array

    if(in_array($file_ext,$extensions) === false)
    {
      $errors[] = "This extension file not allowed, Please choose a JPG or PNG file.";
    }

    if($file_size > 2097152){ // size > 2mb
      $errors[] = "File size must be 2mb or lower.";
    }
    // basename of index.jpg -- index    
    $new_name = time(). "-".basename($file_name);// distic same name by using time 
    $target = "upload/".$new_name; // store file in this folder

    if(empty($errors) == true){ // if no errors than upload file
      move_uploaded_file($file_tmp,$target);
    }else{
      print_r($errors);
      die();
    }
  }

  session_start();
  // store  entered post
  $title = mysqli_real_escape_string($conn, $_POST['post_title']);
  $description = mysqli_real_escape_string($conn, $_POST['postdesc']);
  $category = mysqli_real_escape_string($conn, $_POST['category']);
  $date = date("d M, Y");
  $author = $_SESSION['user_id'];

  $sql = "INSERT INTO post(title, description,category,post_date,author,post_img)
          VALUES('{$title}','{$description}',{$category},'{$date}',{$author},'{$new_name}');";
  // update number of post 
  $sql .= "UPDATE category SET post = post + 1 WHERE category_id = {$category}";

  // run more query
  if(mysqli_multi_query($conn, $sql)){
    header("location: {$hostname}/admin/post.php");
  }else{
    echo "<div class='alert alert-danger'>Query Failed.</div>";
  }

?>
