<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Dietician</title>
    <style>
        /* Basic styling for the layout */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #fff;
            background-image: url('https://images.pexels.com/photos/2762942/pexels-photo-2762942.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); /* Background image */
            background-size: cover;
            background-position: center;
        }

        /* Sidebar styling */
        .sidebar {
            width: 250px;
            background-color: #333;
            padding: 20px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            color: white;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 5px;
            background-color: rgba(92, 92, 164, 0.8);
        }

        .sidebar a:hover {
            background-color: rgba(74, 74, 157, 0.9);
        }

        /* Content styling */
        .content {
            margin-left: 250px;
            padding: 40px;
            width: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Title styling - setting the title text color to white */
        .content h1 {
            text-align: center;
            font-size: 2em;
            color: white; /* Set the title color to white */
        }

        /* Form container styling with transparent background */
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            max-width: 500px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.2); /* Semi-transparent background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            color: #fff; /* Ensure text color contrasts with the background */
        }

        .form-container input,
        .form-container select,
        .form-container button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque background for form fields */
            color: #333; /* Dark text color for readability on light input background */
        }

        .form-container button {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #45a049;
        }

        .form-container input[type="file"] {
            border: none;
            padding: 0;
            color: #333;
        }

        /* Table styling for the form */
        table {
            width: 100%;
            background-color: rgba(255, 255, 255, 0.1); /* Transparent background for the table */
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: rgba(0, 0, 0, 0.3); /* Semi-transparent dark background for table header */
            color: #fff; /* White text for header */
        }

        td {
            background-color: rgba(0, 0, 0, 0.2); /* Semi-transparent background for table cells */
            color: #fff; /* White text for cells */
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h2>Manage Dieticians</h2>
    <a href="/adddietician">Add Dietician</a>
    <a href="/deletedietician">Delete Dietician</a>
    <a href="/updatedietician">Update Dietician</a>
    <a href="/viewalldieticians">View All Dieticians</a>
     <p><a href="adminhome">Back to Home</a></p>
</div>

<!-- Main content -->
<div class="content">
    <h1>Update Dietician Information</h1>

    <!-- Form to update dietician details with semi-transparent background -->
    <div class="form-container">
        <form action="/updateDietician" method="POST">
            <input type="hidden" name="email" value="${dietician.email}">

            <table>
                <tr>
                    <th><label for="name">Name</label></th>
                    <td><input type="text" id="name" name="name" value="${dietician.name}" required></td>
                </tr>
                <tr>
                    <th><label for="license">License</label></th>
                    <td><input type="text" id="license" name="license" value="${dietician.license}" required></td>
                </tr>
                <tr>
                    <th><label for="qualification">Qualification</label></th>
                    <td><input type="text" id="qualification" name="qualification" value="${dietician.qualification}" required></td>
                </tr>
                <tr>
                    <th><label for="contact">Contact</label></th>
                    <td><input type="text" id="contact" name="contact" value="${dietician.contact}" required></td>
                </tr>
                <tr>
                    <th><label for="age">Age</label></th>
                    <td><input type="number" id="age" name="age" value="${dietician.age}" required></td>
                </tr>
                <tr>
                    <th><label for="gender">Gender</label></th>
                    <td><input type="text" id="gender" name="gender" value="${dietician.gender}" required></td>
                </tr>
                <tr>
                    <th><label for="pwd">Password</label></th>
                    <td><input type="password" id="pwd" name="pwd" value="${dietician.pwd}" required></td>
                </tr>
            </table>

            <button type="submit">Update Dietician</button>
        </form>
    </div>
</div>

</body>
</html>
