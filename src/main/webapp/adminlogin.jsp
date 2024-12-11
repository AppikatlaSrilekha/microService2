<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login - Dietician App</title>
    <style>
        /* Basic styling */
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: url('https://i.pinimg.com/originals/ef/3f/3f/ef3f3fe30f5b76f20268b433b4f3a524.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        .login-container {
            background-color: rgba(126, 120, 145, 0.8); /* Darker box color with transparency */
            padding: 30px;
            width: 350px; /* Larger square dimensions */
            height: 350px;
            border-radius: 15px; /* Rounded corners */
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.3); /* Shadow for depth */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .login-container h2 {
            margin: 0 0 20px;
            font-size: 1.8em;
            color: white;
            text-align: center;
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px;
            text-align: left;
            color: white;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.9);
        }
        .button-container {
            text-align: center;
            margin-top: 15px;
        }
        button {
            padding: 10px 25px;
            margin: 5px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            background-color: rgba(178, 153, 214, 0.9); /* Button color with transparency */
            color: white;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: rgba(156, 136, 176, 0.9); /* Darker on hover */
        }
        .error-message {
            color: red;
            font-size: 0.9em;
            text-align: center;
            margin-bottom: 10px;
        }
        .back-link {
            text-align: center;
            margin-top: 10px;
        }
        .back-link a {
            color: #ddd;
            text-decoration: none;
            font-size: 0.9em;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2><u>Admin Login</u></h2>

        <!-- Display error message if login fails -->
        <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>

        <!-- Login form within a centered table -->
        <form action="adminlogin" method="post">
            <table>
                <tr>
                    <td><label for="email">Enter Username</label></td>
                    <td><input type="email" id="email" name="email" required></td>
                </tr>
                <tr>
                    <td><label for="password">Enter Password</label></td>
                    <td><input type="password" id="password" name="password" required></td>
                </tr>
            </table>
            <div class="button-container">
                <button type="submit">Login</button>
                <button type="reset">Clear</button>
            </div>
        </form>

        <!-- Back to home link -->
        <div class="back-link">
            <p><a href="home">Back to Home</a></p>
        </div>
    </div>
</body>
</html>
