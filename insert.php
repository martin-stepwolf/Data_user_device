<?php

    //Create connection
  $connection = mysqli_connect('localhost', 'root', '', 'dbase');
    if($_POST['sisop']){
      $sisop = $_POST['sisop'];
      $versionsisop = $_POST['versionsisop'];
      $navegadorop= $_POST['navegadorop'];
      $versionnavegador = $_POST['versionnavegador'];
      $resoluc = $_POST['resoluc'];
      $profund = $_POST['profund'];
      $idioma = $_POST['idioma'];
      $zonhor = $_POST['zonhor'];
      $orien = $_POST['orien'];
      $toscr = $_POST['toscr'];
      $typedis = $_POST['typedis'];
      $user = $_POST['user'];
      $pass = $_POST['pass'];

      $q = "INSERT INTO so1 (idso, SistemaOP, VersionSo, Navegador, VersionNaveg, Resoluc, Profundidadcol, Idioma, zonahor, orientac, TouchScr, TypeDis, Iduser ) VALUES ('', '$sisop', '$versionsisop', '$navegadorop', '$versionnavegador', '$resoluc', '$profund', '$idioma', '$zonhor', '$orien', '$toscr', '$typedis', '$user')";

      $q1 = "INSERT INTO user (idus, pass, name) VALUES ('', '$pass', '$user')";

      $query = mysqli_query($connection, $q);
      $query1 = mysqli_query($connection, $q1);

      if($query){
          echo json_encode("Data Inserted Successfully");
          }
      else {
          echo json_encode('problem');
          }
      }
      // if($query1){
      //     echo json_encode("Data Inserted Successfully");
      //     }
      // else {
      //     echo json_encode('problem');
      //     }
      // }

?>
