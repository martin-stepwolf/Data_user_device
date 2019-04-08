<?php

    //Create connection
  $connection = mysqli_connect('localhost', 'root', '', 'data_user_device');
      $email = $_POST['email'];
      $password = $_POST['password'];

      $q = "INSERT INTO user (id_user, email, password) VALUES ('', '$email', '$password')";
      $query = mysqli_query($connection, $q);

      if($query){
          echo json_encode("Data Inserted Successfully");
          }
        else {
            echo json_encode('problem');
            }
?>
