<?php
    include('../../config/config.php');
    $data = $_GET['data'];
    $scent_ids = json_decode($data);
    $scent_id = $_GET['scent_id'];
    $scent_name = $_POST['scent_name'];

    if (isset($_POST['scent_add'])) {
        $sql_add = "INSERT INTO scent(scent_name) VALUE('".$scent_name."')";
        mysqli_query($mysqli, $sql_add);
        move_uploaded_file($scent_image_tmp, 'uploads/'.$scent_image);
        header('Location: ../../index.php?action=scent&query=scent_list');
    }
    elseif (isset($_POST['scent_edit'])) {
        $sql_update = "UPDATE scent SET scent_name='".$scent_name."' WHERE scent_id = '$_GET[scent_id]'";
        
        mysqli_query($mysqli, $sql_update);
        header('Location: ../../index.php?action=scent&query=scent_list');
    }
    else {
        foreach ($scent_ids as $id) {
        $sql_delete = "DELETE FROM scent WHERE scent_id = '".$id."'";
        mysqli_query($mysqli, $sql_delete);
        header('Location: ../../index.php?action=scent&query=scent_list');
        }
    }
?>

