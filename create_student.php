<?php 
include 'master/dependancies.php'; ?>

<body id="body-pd">
    <?php include 'master/sidebar.php'; ?>
    <div class="height-100 bg-light">
    <div class="container mt-5">
		<div class="card">
			<div class="card-header">
			Upload CSV for bulk upload
			</div>
			<div class="card-body">
		    <form action="php/upload_student_data.php" method="post" enctype="multipart/form-data">
			<label for="file">Choose a CSV file:</label>
			<input type="file" name="file" id="file" accept=".csv" required>      
			<input type="submit" class="btn btn-success" value="Upload">
		    </form>
			</div>
		</div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Reg No</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">DOB</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Boarding Status</th>
                    <th scope="col">Department</th>
                    <th scope="col">Section</th>
                    <th scope="col">Batch</th>
                    <th scope="col">Programme</th>

                </tr>
            </thead>
            <tbody>
		<?php include 'php/get_table.php'; ?>
            </tbody>
        </table>

        <div class="d-flex justify-content-end">
            <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#studentFormModal">Insert</button>
        </div>
    </div>

    <div class="modal fade" id="studentFormModal" tabindex="-1" aria-labelledby="studentFormModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content justify-content-center ">
                <div class="modal-header">
                    <h5 class="modal-title" id="studentFormModalLabel">Insert Student Information</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <form method="post" action="php/upload_student_data.php">
                        <div class="row mb-3">
                            <div class="col">
                                <select name="students[0][department]" class="form-select" aria-label="Select Department">
                                    <option selected value="107">CSE(Cyber-Scurity)</option>
                                    <option value="2">Computer Science And Engineering</option>
                                </select>
                            </div>
                            <div class="col">
                                <select name="students[0][batch]" class="form-select" aria-label="Select Batch">
                                    <option selected value="3">2024 - 2028</option>
                                </select>
                            </div>
                            <div class="col">
                                <select name="students[0][section_id]" class="form-select" aria-label="Section">
                                    <option selected>Section</option>
                                    <option value="1">A</option>
                                    <option value="2">B</option>
                                    <option value="3">C</option>
                                    <option value="4">D</option>
                                </select>
                            </div>
                        </div>

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">Student Name</th>
                                    <th scope="col">Register No</th>
                                    <th scope="col">D.O.B</th>
                                    <th scope="col">Gender</th>
                                    <th scope="col">Boarding Status</th>
				</tr>
                            </thead>
                            <tbody id="studentEntries">
                                <tr>
                                    <td><input type="text" name="students[0][name]" class="form-control" placeholder="Enter Student Name :" required></td>
                                    <td><input type="text" name="students[0][register_no]" class="form-control" placeholder="Enter Register No :" required></td>
                                    <td><input type="date" name="students[0][DOB]" class="form-control" required></td>
                                    <td>
                                        <select name="students[0][gender]" class="form-select" required>
                                            <option selected>Gender</option>
                                            <option value="M">Male</option>
                                            <option value="F">Female</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="students[0][boarding_status]" class="form-select" required>
                                            <option selected>Boarding Status</option>
                                            <option value="D">Dayscholar</option>
                                            <option value="H">Hosteller</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button class="btn btn-success me-md-2" type="button" id="addEntry">Add Entry</button>
                            <button class="btn btn-success" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script>
        $(document).ready(function () {
            let studentCount = 1;

            $('#addEntry').click(function () {
                let newEntry = `
                    <tr>
                        <td><input type="text" name="students[${studentCount}][name]" class="form-control" placeholder="Enter Student Name :" required></td>
                        <td><input type="text" name="students[${studentCount}][register_no]" class="form-control" placeholder="Enter Register No :" required></td>
                        <td><input type="date" name="students[${studentCount}][DOB]" class="form-control" required></td>
                        <td>
                            <select name="students[${studentCount}][gender]" class="form-select" required>
                                <option selected>Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </td>
                        <td>
                            <select name="students[${studentCount}][boarding_status]" class="form-select" required>
                                <option selected>Boarding Status</option>
                                <option value="Dayscholar">Dayscholar</option>
                                <option value="Hosteller">Hosteller</option>
                            </select>
                        </td>
                    </tr>`;

                $('#studentEntries').append(newEntry);
                studentCount++;
            });
        });
    </script>
    </div>
</body>
