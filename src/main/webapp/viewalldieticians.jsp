<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View All Dieticians</title>
    <style>
        /* Basic styling for the layout and sidebar */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #fff;
            background-image: url('https://images.pexels.com/photos/4996942/pexels-photo-4996942.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); /* Background image */
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
            box-shadow: 2px 0 5px rgba(0,0,0,0.2);
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
        /* Styling for the table */
        h1 {
            text-align: center;
            color: #fff; /* Title color set to white for contrast */
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            background-color: rgba(255, 255, 255, 0.2); /* Semi-transparent background for the table */
        }
        table, th, td {
            border: 1px solid rgba(255, 255, 255, 0.6); /* Semi-transparent white border */
        }
        th, td {
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: rgba(0, 0, 0, 0.4); /* Semi-transparent dark background for header */
            color: white;
        }
        tr:nth-child(even) {
            background-color: rgba(255, 255, 255, 0.3); /* Slightly darker transparent row for even rows */
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

<!-- Content Section -->
<div class="content">
    <h1>All Registered Dieticians</h1>
    
    <table>
        <tr>
            <th>Email</th>
            <th>License</th>
            <th>Name</th>
            <th>Qualification</th>
            <th>Contact</th>
            <th>Age</th>
            <th>Gender</th>
        </tr>
        <c:forEach var="dietician" items="${dieticians}">
            <tr>
                <td>${dietician.email}</td>
                <td>${dietician.license}</td>
                <td>${dietician.name}</td>
                <td>${dietician.qualification}</td>
                <td>${dietician.contact}</td>
                <td>${dietician.age}</td>
                <td>${dietician.gender}</td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
