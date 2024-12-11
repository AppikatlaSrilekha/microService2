<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Dietician</title>
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
            background-image: url('https://images.pexels.com/photos/6543754/pexels-photo-6543754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); /* Background image */
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
        .content h1 {
            text-align: center;
            color: #fff; /* Set title color to white */
        }
        /* Table styling with transparency */
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.3); /* Semi-transparent background for table */
        }
        th, td {
            padding: 12px;
            border: 1px solid rgba(255, 255, 255, 0.5); /* Light border for visibility */
            text-align: left;
            background-color: rgba(0, 0, 0, 0.3); /* Semi-transparent background for table cells */
            color: #fff; /* White text for contrast */
        }
        th {
            background-color: rgba(0, 0, 0, 0.5); /* Slightly darker background for table headers */
            font-weight: bold;
        }
        .delete-btn {
            background-color: #f44336;
            border: none;
            padding: 5px 10px;
            color: white;
            cursor: pointer;
            border-radius: 3px;
        }
        .delete-btn:hover {
            background-color: #d32f2f;
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
    <h1>Delete a Dietician</h1>
    
    <!-- Table to display Dieticians -->
    <table>
        <thead>
            <tr>
                <th>Email</th>
                <th>Name</th>
                <th>Specialty</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="dietician" items="${dieticians}">
                <tr>
                    <td>${dietician.email}</td>
                    <td>${dietician.name}</td>
                    <td>${dietician.specialty}</td>
                    <td>
                        <!-- Delete Button -->
                        <form action="/deleteDietician" method="post" style="display:inline;">
                            <input type="hidden" name="dieticianEmail" value="${dietician.email}">
                            <button type="submit" class="delete-btn">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>
