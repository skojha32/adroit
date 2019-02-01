<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Send email via Gmail SMTP server in PHP</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
    <h1>Sending an email to Gmail SMTP Server in PHP</h1>
    <div class="jumbotron">
        <hr/>
    
<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

if(isset($_POST['send']))
{
    $to_id = $_POST['toid'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];
    // $imagename = $_POST['imagename']; // for image name
    // $image = $_FILES['image']['tmp_name']; //choose ur image and check in form enctype="multipart/form-data"

    $mail = new PHPMailer(true);  

    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
    $mail->SMTPAuth = true;                               // Enable SMTP authentication
    $mail->Username = 'vedprakash151994@gmail.com';                 // SMTP username
    $mail->Password = 'ved88802026178';                           // SMTP password
    $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
    $mail->Port = 587;

    $mail->setFrom('vedprakash151994@gmail.com', 'Ved Prakash N'); 
    $mail->addAddress($to_id); 

    $mail->Subject = $subject;
    $mail->Body    = $message;

    // $mail->addAttachment($image, $imagename);  // sending an Image
   
    if (!$mail->send()) 
    {
        $error = "Mailer Error: " . $mail->ErrorInfo;
        echo '<p id="para">'.$error.'</p>';
    }
    else 
    {
        echo '<p id="para">Message sent!</p>';
    }
}
else
{
    echo " <div class=display> Please enter valid data </div> ";
}
?>
        <form action="" method="post" enctype="multipart/form-data">
            <label> To: </label><br>
            <input type="text" placeholder="To : Email Id " name="toid"/> <br>
            <label> Subject: </label><br>
            <input type="text" placeholder="Subject : " name="subject"/><br>
            <label> Message: </label><br>
            <textarea rows="4" cols="50" placeholder="Enter Your Message..." name="message"></textarea><br>
            <!-- <label> Email ID: </label>
            <input type="text" placeholder="Image Name : " name="imagename"/>
            <label> Upload an Image: </label><br>
            <input type="file" class="file" name="image" id="image"/><br> -->
            <input type="submit" value="Send" name="send"/><br>
        </form>
    </div>
</div>

</body>
</html>