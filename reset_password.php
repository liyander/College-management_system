<?php



if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $mysqli->real_escape_string($_POST['email']);
    $otp = $mysqli->real_escape_string($_POST['otp']);
    $new_password = password_hash($mysqli->real_escape_string($_POST['new_password']), PASSWORD_BCRYPT);
    $wthashpassord = $mysqli->real_escape_string($_POST['new_password']);
    $repeat_password = $mysqli->real_escape_string($_POST['repeat_password']) ;
    $result = $mysqli->query("SELECT * FROM user WHERE email = '$email' AND otp = '$otp'");

    if ($wthashpassord !== $repeat_password) {
        echo "New passwords do not match!";
    }elseif ($result->num_rows > 0) {
        $mysqli->query("UPDATE user SET password = '$new_password', otp = NULL WHERE email = '$email'");
        echo '<script>alert("Password reset successfully!");window.location="login.php";</script>';
        exit();
    } else {
        echo "Invalid OTP!";
    }
} elseif (isset($_GET['email'])) {
    $email = htmlspecialchars($_GET['email']); 
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Reset Password</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <div class="container d-flex justify-content-center align-items-center min-vh-100">
            <div class="card" style="min-width:350px;">
                <div class="card-header text-center">
                    Reset Password
                </div>
                <div class="card-body">
                    <form action="reset_password.php" method="POST">
                        <input type="hidden" name="email" value="<?php echo $email; ?>" />
                        <div class="mb-3">
                            <label class="form-label">OTP :</label>
                            <input type="text" class="form-control" name="otp" placeholder="Enter your OTP" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">New Password :</label>
                            <input type="password" class="form-control" name="new_password" placeholder="Enter your New Password" required>
                        </div>
                        <div>
                        <div class="mb-3">
                            <label class="form-label">Confirm Password :</label>
                            <input type="password" class="form-control" name="repeat_password" placeholder="Repeat your New Password" required>
                        </div>
                        <div class="d-grid gap-2" >
                            <button type="submit" class="btn btn-success">Change Password</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
        crossorigin="anonymous"></script>
    </body>
    </html>
    <?php
} else {
    echo "No email provided!";
}
?>
