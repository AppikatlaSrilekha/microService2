<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dietician Management</title>
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
            background-image: url('https://images.pexels.com/photos/1161682/pexels-photo-1161682.jpeg'); /* Background image */
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
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        .welcome-box {
            background-color: rgba(255, 255, 255, 0.2); /* Transparent background */
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            width: 450px; /* Medium rectangle width */
        }
        .welcome-box h1 {
            font-size: 1.5em;
            margin: 0;
            color: #fff;
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
    <!-- Transparent welcome box -->
    <div class="welcome-box">
        <h1>Welcome to Dietician Management</h1>
    </div>
</div>

</body>
</html>
