<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Authentication Code</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .auth-container {
            text-align: center;
            max-width: 400px;
            width: 100%;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
        }

        label {
            display: block;
            margin: 15px 0 5px;
            font-size: 14px;
            font-weight: bold;
            color: #555;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        .input-code {
            text-align: center;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

        .replace-code {
            display: block;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="auth-container">
    <h2>Nhập vào mã xác thực từ email</h2>
    <form action="account-insert.php" method="post">
        <label for="authCode">RosaStore Code:</label>
        <input class="input-code" type="text" id="authCode" name="authCode" placeholder="Enter code" required>
        <button type="submit">Xác Thực</button>
        <a class="replace-code" href="../../mail/index.php">Tôi chưa nhận được mã xác thực</a>
    </form>
    <div id="toast">
</div>
<script>
    function showErrorMessage() {
        alert('Mã xác thực không chính xác')
    }
</script>
<?php
if (isset($_GET['message']) && $_GET['message'] == 'error') {
    echo '<script>';
    echo 'showErrorMessage();';
    echo 'window.history.pushState(null, "", "checkcode.php");';
    echo '</script>';
}
?>
</body>

</html>

