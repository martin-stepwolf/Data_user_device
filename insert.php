<?php

    //Create connection
  $connection = mysqli_connect('localhost', 'root', '', 'data_user_device');
      $usera = $_POST['usera'];
      $sisop = $_POST['sisop'];
      $versionsisop = $_POST['versionsisop'];
      $navegadorop = = $_POST['navegadorop'];
      $versionnavegador = $_POST['versionnavegador'];
      $profund = $_POST['profund'];
      $resoluc = $_POST['resoluc'];
      $zonhor = $_POST['zonhor'];
      $idioma = $_POST['idioma'];
      $typedis = $_POST['typedis'];
      $orien = $_POST['orien'];
      $email = $_POST['email'];
      $password = $_POST['password'];

      $q = "INSERT INTO user (id_user, email, password) VALUES ('', '$email', '$password')";
      $query = mysqli_query($connection, $q);
      //$q2 = "INSERT INTO devices (id_device,	id_user,	usera,	sisop,	versionsisop,	navegadorop,	versionnavegador,	profund,	resoluc,	zonhor,	idioma,	typedis,	orien)"+
      // "VALUES ('',	'',	'$usera',	'$sisop',	'$versionsisop',	'$navegadorop',	'$versionnavegador',	'$profund',	'$resoluc',	'$zonhor',	'$idioma',	'$typedis',	'$orien')";
      //$quer2 = mysqli_query($connection, $q2);

      if($query){
          echo json_encode("Data Inserted Successfully");
          }
        else {
            echo json_encode('problem');
            }
?>
