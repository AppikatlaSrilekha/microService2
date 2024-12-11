<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete User</title>
    <style>
       body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #fff;
            background-image: url('https://i.pinimg.com/originals/ef/3f/3f/ef3f3fe30f5b76f20268b433b4f3a524.jpg'); /* Background image */
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
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            max-width: 500px;
            margin: 0 auto;
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container select,
        .form-container button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-container button {
            background-color: #e74c3c;
            color: white;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <h2>Manage Users</h2>
    <!-- <a href="/adduser">Add User</a> -->
    <a href="/deleteuser">Delete User</a>
    <!-- <a href="/updateuser">Update User</a> -->
    <a href="/viewallusers">View All Users</a>
    <p><a href="adminhome">Back to Home</a></p>
</div>

<div class="content">
    <h1>Delete User</h1>

    <div class="form-container">
        <form action="/deleteuser" method="post">
            <select name="email" required>
                <option value="" disabled selected>Select User to Delete</option>
                
            </select>
            <button type="submit" onclick="return confirm('Are you sure you want to delete this user?')">Delete User</button>
        </form>
    </div>
</div>

</body>
</html>
