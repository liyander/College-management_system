<?php
include 'master/config.php';
	session_start();
        if(isset($_POST['submit'])){
                $username = $_POST['username'];
                $password = $_POST['password'];
                $loginSQL="select * from login where email_id='".$username."' and password=PASSWORD('".$password."');";
                $loginEXE=mysqli_query($connection,$loginSQL);
		if ($loginEXE->num_rows==1){
			$_SESSION['user_id'] = mysqli_fetch_row($loginEXE)[0];
                        header('Location: dashboard.php');
                }else{
			echo "<script>alert('login failed please check username and password');
			window.location='index.php';
			</script>";
		}
        }

?>
