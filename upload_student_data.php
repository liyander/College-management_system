<?php
include '../master/config.php';
if(isset($_POST['students'])){
    $students = $_POST['students'];
    foreach($students as $student){
        $register_no = $student['register_no'];
        $name = $student['name'];
        $dob = $student['DOB'];
        $gender = $student['gender'];
        $boarding_status = $student['boarding_status'];
        $department = $student['department'];
        $batch_id = $student['batch'];
        $section_id = $student['section_id'];
        $get_mapping_id = 'select mapping_id from mapping_program_department where department_id="'.$department.'"';
        $queryEXE = mysqli_query($connection,$get_mapping_id);
        $mapping_id = mysqli_fetch_array($queryEXE)[0];
        $insert_details = 'insert into student_information values("'.$register_no.'","'.$name.'","'.$dob.'","'.$gender.'","'.$boarding_status.'","'.$mapping_id.'","'.$batch_id.'","'.$section_id.'")';
        $queryAXE = mysqli_query($connection,$insert_details);
    }
}

?>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_FILES["file"])) {
        $file = $_FILES["file"]["tmp_name"];
        
        if (($handle = fopen($file, "r")) !== FALSE) {
          
            $headers = fgetcsv($handle, 1000, ",");
            
            
            $sql = "INSERT INTO student_information (" . implode(", ", $headers) . ") VALUES (" . implode(", ", array_fill(0, count($headers), "?")) . ")";
            $stmt = $connection->prepare($sql);
            
            while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                $stmt->bind_param(str_repeat("s", count($headers)), ...$data);
                $stmt->execute();
            }
            
            fclose($handle);
            echo '<script>alert("File Uploaded Successfully");header("Location: dashboard.php");</script>';
        } else {
            echo "Error opening file.";
        }
    } else {
        echo "No file uploaded.";
    }
}
?>
