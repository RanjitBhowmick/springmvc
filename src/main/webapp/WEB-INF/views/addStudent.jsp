<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        button {
            padding: 5px 10px;
            border: none;
            cursor: pointer;
        }
        .edit {
            background-color: #4CAF50;
            color: white;
        }
        .delete {
            background-color: #f44336;
            color: white;
        }
        .form-container {
            margin: 20px auto;
            width: 60%;
        }
        input[type="text"] {
            padding: 5px;
            width: 100%;
            margin: 5px 0;
        }
        .submit-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>

    <!-- Add Student Form -->
    <p>${error}</p>
    <div class="form-container">
        <h2>Add Student</h2>
        <form action="/addNewStudent" method="POST">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${student.name}" required />

            <label for="standard">Standard:</label>
            <input type="text" id="standard" name="standard" value="${student.standard}" required />

            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" value="${student.mobile}" required />

            <label for="email">Email:</label>
            <input type="text" id="email" name="email" value="${student.email}" required />

            <button type="submit" class="submit-button">Add Student</button>
        </form>
    </div>

</body>
</html>
