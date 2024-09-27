<?php
session_start();
include 'master/config.php';
require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';


use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$isValid = True; 


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $connection->real_escape_string($_POST['email']);
    $result = $connection->query("SELECT * FROM login WHERE email_id = '$email'");
    $isValid = True; 
    if ($result->num_rows > 0) {
        
        $otp = rand(100000, 999999);
        $connection->query("UPDATE user SET otp = '$otp' WHERE email = '$email'");
        
        $mail = new PHPMailer(true);
        try {
            
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';  
            $mail->SMTPAuth = true;
            $mail->Username = 'missionuniverse07@gmail.com'; 
            $mail->Password = 'gbaq wpxs kwri buhq';        
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = 587;
            
            
            $mail->setFrom('admin@srishathi.ac.in', 'Student management');
            $mail->addAddress($email);               
            
            $mail->isHTML(true);
            $mail->Subject = 'Password Reset OTP';
            $mail->Body    = "Your OTP for password reset is: <strong>$otp</strong>";
            $mail->AltBody = "Your OTP for password reset is: $otp";
            
            $mail->send();
            echo 'OTP sent to your email!';
            
            
            header("Location: reset_password.php?email=" . urlencode($email));
            exit();
        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    } else {
        $_SESSION['error'] = "Incorrect username or password!";
        header("Location: " . $_SERVER['PHP_SELF']);
        exit();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class ="d-flex justify-content-center align-items-center vh-100">
        <div class="card d-grid gap-1" style="min-width:350px;">
        <?php if (isset($_SESSION['error'])): ?>
        <div class="alert alert-danger" id="alertBanner">
            <?php 
            echo $_SESSION['error'];
            unset($_SESSION['error']); 
            ?>
        </div>
    <?php endif; ?>
            <div class="card-header text-center">
                Forgot Password
            </div>
            <div class="card-body">
                <form action="forget_password.php" method="post">
                    <div class="mb-3">
                        <p class="text-center mb-1">Enter your registered email address below, and</p>
                        <p class="text-center">we’ll send you an OTP to reset your password.</p>
                        <label class="form-label">Email ID :</label>
                        <div class="mt-2">
                            <input type="email" class="form-control" id="email" placeholder="Enter You Email ID" name="email" required>
                                                  
                        </div>
                    </div>
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-success btn-primary">Reset Password</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
    crossorigin="anonymous"></script>
</body>
</html>


