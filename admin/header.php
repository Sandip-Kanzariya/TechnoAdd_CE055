<?php
  include "config.php";
  session_start();
  
  // this code restrict to enter without login
  if(!isset($_SESSION["username"])){
    header("Location: {$hostname}/admin/");
  }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>ADMIN | Panel</title>
        <link rel="shortcut icon" type="image/png" href="images/icon.png">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="../css/bootstrap.min.css" />
        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="../css/font-awesome.css">
        <!-- Custom stlylesheet -->
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body >
        <!-- HEADER -->
        <div id="header-admin">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- LOGO -->
                    <div class="col-md-2">
                            <a href="post.php"><img class="logo" src="images/logo.png"></a>
                    </div>
                    <!-- /LOGO -->
                      <!-- LOGO-Out -->
                    <div class="col-md-offset-6  col-md-4">
                    <span class="new" >Hello <?php echo $_SESSION["username"]; ?></span>
                    <style>
                        .new{
                            margin: 10px 80px 10px 0px;
                            font-size: 18px;
                            color: black;
                            font-weight: 600;
                            text-transform: uppercase;
                            display: inline-block;
                        }
                    </style>
                    <a href="logout.php" class="admin-logout">logout</a>
                    </div>
                    <!-- /LOGO-Out -->
                </div>
            </div>
        </div>
        <!-- /HEADER -->
        <!-- Menu Bar -->
        <div id="admin-menubar">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                       <ul class="admin-menu">
                            
                            
                            <li>
                                <a href="http://localhost/TechnoAdd_CE055">Home</a>
                                
                                <!-- <a href="$hostname">Home</a> need to include config.php-->
                            </li>
                            <li>
                                <a href="post.php">Post</a>
                            </li>
                            <?php
                              if($_SESSION["user_role"] == '1'){
                            ?>
                            <li>
                                <a href="category.php">Category</a>
                            </li>
                            <li>
                                <a href="users.php">Users</a>
                            </li>
                            <li>
                                <a href="settings.php">Settings</a>
                            </li>
                            <?php
                              }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Menu Bar -->
