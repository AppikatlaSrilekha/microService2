<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home - Dietician App</title>
    <style>
        /* Full-page background styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff; /* White text for better contrast */
            text-align: center;
        }
        .home-container {
            background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent dark overlay */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.3); /* Shadow for depth */
            max-width: 600px;
        }
        h1 {
            font-size: 2em;
            margin-bottom: 15px;
        }
        p {
            font-size: 1.2em;
            margin-bottom: 20px;
        }
        .login-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #6c63ff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .login-button:hover {
            background-color: #5848c2;
        }
    </style>
</head>
<body>
    <div class="home-container">
        <h1>Welcome to the Dietician Management Application</h1>
        <p>To access the admin dashboard, please log in below:</p>
        <a href="adminlogin" class="login-button">Admin Login</a>
    </div>
</body>
</html>
