<!DOCTYPE html>
<html>
<head>
    <title>Search Student</title>
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
        .submit-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
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
        .search-message {
            color: red;
            font-size: 18px;
            text-align: center;
        }
    </style>
</head>
<body>

    <h1 style="text-align: center;">Search Student</h1>

    <!-- Search Form -->
    <div class="form-container">
        <form action="/searchStudent" method="POST">
            <input type="text" name="name" placeholder="Enter student name" required /><br/>
            <button type="submit" class="submit-button">Search</button>
        </form>
    </div>

</body>
</html>
