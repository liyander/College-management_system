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
                Programme creation
            </div>
            <div class="card-body">
                <form action="php/upload_degree_details.php" method="POST">
                    <div class="row mb-3">
			<div class="col">
				<label for="programme-name" class="form-label">Programme Name:</label>
				<input type="text" name="programme_name" class="form-control" required>
			</div>
                        <div class="col">
				<label for="programme-duration" class="form-label">Duration(in years):</label>
				<input type="text" name="duration" class="form-control" required>
                        </div>
			<div class="col">
				<label for="no_of_semesters" class="form-label">No. Of Semesters:</label>
				<input type="text" name="no_of_semesters" class="form-control" required>
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
