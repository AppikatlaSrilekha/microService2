<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
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
            background-image: url('https://images.pexels.com/photos/2616716/pexels-photo-2616716.png'); /* Background image */
            background-size: cover;
            background-position: center;
        }
        .content {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.6); /* Dark overlay for readability */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.3);
        }
        .welcome-message h1 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #fff;
        }
        .button-container {
            display: flex;
            gap: 20px;
            justify-content: center;
        }
        .button-container a {
            display: inline-block;
            padding: 15px 30px;
            font-size: 1em;
            color: white;
            text-decoration: none;
            background-color: rgba(92, 92, 164, 0.8);
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }
        .button-container a:hover {
            background-color: rgba(74, 74, 157, 0.9);
        }
    </style>
</head>
<body>

<div class="content">
    <div class="welcome-message">
        <h1>Welcome, Admin</h1>
    </div>
    <div class="button-container">
        <a href="/manageusers">Users</a>
        <a href="/managedieticians">Dieticians</a>
    </div>
</div>

</body>
</html>
