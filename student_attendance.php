<?php include 'php/search_details.php'; ?>
<form method="POST" action="php/upload_attendance.php">
    <div class="row">
	<div class="col-md-3">
	<?php
		echo $batch;
	?>
	</div>
	<div class="col-md-2">
		<select id="section-dropdown" name="section" class="form-select" aria-label="Default select example">
	</select>
	</div>
    <div class="col-md-2">
	<?php
		echo $academic_year;
	?>
	</div>
    <div class="col-md-3">
            <select id="subject-dropdown" name="subject" class="form-select" aria-label="Default select example">
	</select>

    </div>
    <div class="col-md-2">

            <select name="period" id="period" class="form-select" aria-label="Default select example">
                <option selected>Periods</option>
                <option value="1">1</option>
                <option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
              </select>
    </div>
    </div>
    <div class="form-group" id="form-group" >
        <div class="input-group mx-auto" >
            <input type="text" class="form-control" name="topics" id="topic-covered" placeholder="Topics covered" style="text-align: center;border:1px solid black">
        </div>
    </div>
    <div style="padding-top: 45px;">
        <table class="table table-striped">
            <thead>
                <tr>
                  <th scope="col">Register Number</th>
                  <th scope="col">Name</th>
                  <th scope="col">Attendance</th>
                  <th scope="col">Remarks</th>
                </tr>
              </thead>
              <tbody id="student-information">
              </tbody>
          </table>
        </div>
	<button id="submit-attendance" class="btn btn-success" value="submit">Submit</button>
	<input id="new-id" name="new-id" type="hidden" value="0"/>
</form>

