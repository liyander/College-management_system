<html>
<table class="table table-bordered table-striped">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
<link rel="stylesheet" href="master/css/dashboard.css">
    <div class="container">
    <form method="POST" action="php/generate_report.php">
    <div class="row">
        <div class="col-md-2">
<?php
include 'php/get_report_details.php';
echo $department;
?>
        </div>
        <div class="col-md-2">
<?php
echo $batch;
?>
	</div>
	<div class="col-md-2">
<?php
echo $academic_year;
?>
	</div>
        <div class="col-md-2">
                <select name="section" class="form-select" aria-label="default select example">
                <option selected>Section</option>
                <option value="1">A</option>
		<option value="2">B</option>
		<option value="3">C</option>
		<option value="4">D</option>
                </select>
        </div>
	<div class="col-md-2">
	<p>From:</p>
	<input type="date" name="date-from" class="form-control">
	</div>
	 <div class="col-md-2">
	<p>To:</p>
	<input type="date" name="date-to" class="form-control">
	</div>
 	<button type="submit" class="btn btn-success" value="submit">sumbit</button>
    </form>
    <div>

    </div>
</html>
