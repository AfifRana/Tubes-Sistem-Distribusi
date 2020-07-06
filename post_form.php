<?php 
    // buka database
    include("connection.php");

    // This function will run within each post array including multi-dimensional arrays
    function ExtendedAddslash(&$params)
    {
            foreach ($params as &$var) {
                // check if $var is an array. If yes, it will start another ExtendedAddslash() function to loop to each key inside.
                is_array($var) ? ExtendedAddslash($var) : $var=addslashes($var);
                unset($var);
            }
    }

    // Initialize ExtendedAddslash() function for every $_POST variable
    ExtendedAddslash($_POST);

    $nama_pembeli = $_POST['nama_pembeli'];
    $id_konser1 = $_POST['konser_terpilih'];
    $id_kelas1 = $_POST['kelas_terpilih'];
    
    // search submission ID

    // $query = "SELECT * FROM `table_name` WHERE `submission_id` = '$submission_id'";
    // $sqlsearch = mysql_query($query);
    // $resultcount = mysql_numrows($sqlsearch);

    // if ($resultcount > 0) {
    
    //     mysql_query("UPDATE `table_name` SET
    //                                 `name` = '$name',
    //                                 `email` = '$email',
    //                                 `phone` = '$phonenumber',
    //                                 `subject` = '$subject',
    //                                 `message` = '$message'       
    //                             WHERE `submission_id` = '$submission_id'")
    //     or die(mysql_error());
    
    // } else {

    // mysql_query("INSERT INTO `table_name` (submission_id, formID, IP, name, email, phone, subject, message)
    //     VALUES ('$submission_id', '$formID', '$ip','$name', '$email', '$phonenumber', '$subject', '$message') ")
    //     or die(mysql_error()); 
    // echo $nama_pembeli . "<br>" . $id_konser1 . "<br>" . $id_kelas1 . "<br>";
    // mysqli_query($link,"INSERT INTO pembeli_tiket (nama_pembeli, id_konser, id_kelas) 
    //     VALUES ('$nama_pembeli', '$id_konser1', '$id_kelas1')")
    //     or die(mysqli_error($link));
    mysqli_query($link,"INSERT INTO pembeli_tiket (nama_pembeli, id_konser, id_kelas) 
        VALUES ('$nama_pembeli', '$id_konser1', '$id_kelas1')")
        or die(mysqli_error($link));
    // }
    mysqli_close($link);
    echo "Succesfull.."
?>