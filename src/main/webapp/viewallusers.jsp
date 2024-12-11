<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View All Users</title>
    <style>
        /* CSS reused from Delete User page */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #fff;
            background-image: url('https://images.pexels.com/photos/2228559/pexels-photo-2228559.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); /* Background image */
            background-size: cover;
            background-position: center;
        }
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
        .content {
            margin-left: 250px;
            padding: 40px;
            width: 100%;
        }
        .content h1 {
            text-align: center;
            font-size: 2em;
            color: #333;
        }
        .table-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            max-width: 800px;
            margin: 0 auto;
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h2>Manage Users</h2>
    <a href="/deleteuser">Delete User</a>
    <a href="/viewallusers">View All Users</a>
    <p><a href="adminhome">Back to Home</a></p>
</div>

<!-- Main content -->
<div class="content">
    <h1>View All Users</h1>

    <!-- Table to display all users -->
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Email</th>
                    <th>Name</th>
                    <th>Password</th>
                </tr>
            </thead>
            <tbody>
                
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
