<?php
    session_start();
    $codepin = $_SESSION['codepin'];
    include('../../admin/config/config.php');

    if ($_POST['authCode'] == $codepin) {
        $account_name = $_SESSION['account_name_register'];
        $customer_address = $_SESSION['customer_address_register'];
        $account_phone = $_SESSION['account_phone_register'];
        $account_email = $_SESSION['account_email_register'];
        $account_password = $_SESSION['account_password_register'];
        $account_gender = $_SESSION['account_gender_register'];

        unset($_SESSION['codepin']);
        unset($_SESSION['account_name_register']);
        unset($_SESSION['customer_address_register']);
        unset($_SESSION['account_phone_register']);
        unset($_SESSION['account_email_register']);
        unset($_SESSION['account_password_register']);
        unset($_SESSION['account_gender_register']);

        $sql_resgister = "INSERT INTO account(account_name, account_email, account_password, account_type) VALUE('" . $account_name . "', '" . $account_email . "', '" . $account_password . "', 0)";
        $query_register = mysqli_query($mysqli, $sql_resgister);

        $sql_account = "SELECT * FROM account WHERE account_email = '$account_email'";
        $get_register = mysqli_query($mysqli, $sql_account);

        $account = mysqli_fetch_array($get_register);

        $sql_customer = "INSERT INTO customer(account_id, customer_name, customer_gender, customer_email, customer_phone, customer_address) VALUE('" . $account['account_id'] . "','" . $account_name . "', '" . $account_gender . "', '" . $account_email . "', '" . $account_phone . "', '" . $customer_address . "')";
        $query_customer = mysqli_query($mysqli, $sql_customer);
        if ($query_register) {
            unset($_SESSION['codepin']);
            unset($_SESSION['account_name_register']);
            unset($_SESSION['customer_address_register']);
            unset($_SESSION['account_phone_register']);
            unset($_SESSION['account_email_register']);
            unset($_SESSION['account_password_register']);
            unset($_SESSION['account_gender_register']);
            echo '<script>alert("Đăng ký thành công");</script>';
            header('Location:../../index.php?page=login&message=success');
        }
    } else {
        echo '<script>alert("Mã xác thực không chính xác");</script>';
        header('Location:checkcode.php?message=error');
    }
?>