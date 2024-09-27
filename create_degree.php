<?php include 'master/dependancies.php';?>

<body>
    <div class="height-100 bg-light">
    <div class="container mt-5">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Programme Name</th>
                    <th scope="col">Duration</th>
                    <th scope="col">No of Semester</th>
                </tr>
            </thead>
            <tbody>
            <?php include 'php/get_programme.php'; ?>
            </tbody>
        </table>

        <div class="d-flex justify-content-end">
            <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#degreeFormModal">Insert</button>
        </div>
    </div>

    <div class="modal fade" id="degreeFormModal" tabindex="-1" aria-labelledby="degreeFormModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content justify-content-center ">
                <div class="modal-header">
                    <h5 class="modal-title" id="degreeFormModalLabel">Insert Degree Information</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form method="post" action="php/upload_degree_details.php" id="degreeForm">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">Programme Name</th>
                                    <th scope="col">Duration</th>
                                    <th scope="col">No of Semesters</th>
                                </tr>
                            </thead>
                            <tbody id="degreeEntries">
                                <tr>
                                    <td><input type="text" name="degree[0][programme_name]" class="form-control" placeholder="Enter Programme Name" required></td>
                                    <td><input type="text" name="degree[0][duration]" class="form-control" placeholder="Enter Duration" required></td>
                                    <td><input type="number" name="degree[0][no_of_semester]" class="form-control" placeholder="Enter Number of Semesters" required></td>
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
            let degreeCount = 1;

            $('#addEntry').click(function () {
                let newEntry = `
                    <tr>
                        <td><input type="text" name="degree[${degreeCount}][programme_name]" class="form-control" placeholder="Enter Programme Name" required></td>
                        <td><input type="text" name="degree[${degreeCount}][duration]" class="form-control" placeholder="Enter Duration" required></td>
                        <td><input type="number" name="degree[${degreeCount}][no_of_semester]" class="form-control" placeholder="Enter Number of Semesters" required></td>
                    </tr>`;

                $('#degreeEntries').append(newEntry);
                degreeCount++;
            });
        });
    </script>
    </div>
</body>
