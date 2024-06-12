<?php
session_start();
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

if(isset($_SESSION['account_email_register'])){
    $email = $_SESSION['account_email_register'];
    echo $email;
    $codepin = sprintf('%06d', rand(0, 9999));
    $_SESSION['codepin'] = $codepin;

    $mail = new PHPMailer(true);
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'quocnguyen.120301@gmail.com';
    $mail->Password = 'juxtglkdcbejiwcy';
    $mail->Port = 465;
    $mail->SMTPSecure = 'ssl';
    $mail->isHTML(true);
    $mail->setFrom("quocnguyen.120301@gmail.com", "SAFIA STORE");
    $mail->addAddress($email);
    $mail->Subject = ("SAFIA STORE Authenticate accounts");  
    $htmlCode = '<div style="border-style:solid;border-width:thin;border-color:#dadce0;border-radius:8px;padding:40px 20px" align="center" class="m_-8448117101150819138mdv2rw">
    <div style="font-family:\'Google Sans\',Roboto,RobotoDraft,Helvetica,Arial,sans-serif;border-bottom:thin solid #dadce0;color:rgba(0,0,0,0.87);line-height:32px;padding-bottom:24px;text-align:center;word-break:break-word">
      <div style="font-size:24px">Xác minh email của bạn </div>
    </div>
    <div style="font-family:Roboto-Regular,Helvetica,Arial,sans-serif;font-size:14px;color:rgba(0,0,0,0.87);line-height:20px;padding-top:20px;text-align:left">
      SAFIA STORE đã nhận được yêu cầu sử dụng <a style="font-weight:bold">Email của bạn </a> làm tên tài khoản đăng nhập SAFIA STORE <br><br>
      Sử dụng mã này để hoàn tất việc đăng ký tài khoản:<br>
      <div style="text-align:center;font-size:36px;margin-top:20px;line-height:44px">'.$codepin.'</div><br>
    </div>
  </div>';
    $mail->Body = $htmlCode;
    $mail->send();

    header("Location:../pages/handle/checkcode.php");
}
