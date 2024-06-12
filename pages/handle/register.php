<?php
session_start();
include('../../admin/config/config.php');
    $account_name = $_POST['account_name'];
    $customer_address = $_POST['customer_address'];
    $account_phone = $_POST['account_phone'];
    $account_email = $_POST['account_email'];
    $account_password = md5($_POST['account_password']);
    if (isset($_POST['account_gender'])) {
        $account_gender = $_POST['account_gender'];
    } else {
        $account_gender = 0;
    }

    $sql_getacc = "SELECT * FROM account WHERE account_email = '" . $account_email . "'";
    $query_getacc = mysqli_query($mysqli, $sql_getacc);
    $count = mysqli_num_rows($query_getacc);
if (isset($_POST['register']) && $count == 0) {
    $_SESSION['account_name_register'] = $account_name;
    $_SESSION['customer_address_register'] = $customer_address;
    $_SESSION['account_phone_register'] = $account_phone;
    $_SESSION['account_email_register'] = $account_email;
    $_SESSION['account_password_register'] = $account_password;
    $_SESSION['account_gender_register'] = $account_gender;
    header('Location:../../mail/index.php');
} else {
    echo '<script>alert("Email đã sử dụng vui lòng nhập lại email khác");</script>';
    header('Location:../../index.php?page=register&message=error');
}
?>