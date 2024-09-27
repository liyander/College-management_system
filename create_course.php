<?php include 'php/search_details.php'; ?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card d-grid gap-1 w-95">
            <div class="card-header text-center">
                Course Completed
            </div>
            <div class="card-body">
                <form method="POST" action="php/upload_course_details.php">
                    <div class="row mb-3">
                        <div class="col">
                            <label for="course_id" class="form-label">Course ID :</label>
                            <input type="text" name="course_id" placeholder="Enter the Course ID :" class="form-control">
                        </div>
                        <div class="col">
                            <label for="course_type" class="form-label">Course Type :</label>
				<?php echo $course_type; ?>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="course_name" class="form-label">Course Name :</label>
                            <input type="text" name="course_name" placeholder="Enter the Course Name :" class="form-control">
                        </div>
                    </div>
                    <div class="d-grid gap-1">
                        <button type="submit" class="btn btn-success" value="submit">Submit</button>
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
