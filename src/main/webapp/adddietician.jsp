<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Dietician</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            color: #fff;
            background-image: url('https://images.pexels.com/photos/4087611/pexels-photo-4087611.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
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

        .sidebar h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px 15px;
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
            width: calc(100% - 250px);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            max-width: 500px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .form-container h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #fff;
        }

        .form-container table {
            width: 100%;
            color: #fff;
        }

        .form-container label {
            font-size: 1em;
            font-weight: bold;
        }

        .form-container input,
        .form-container select {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.9);
            color: #333;
        }

        .form-container button {
            width: 48%;
            padding: 10px;
            margin: 10px 1%;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: #fff;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #45a049;
        }

        .form-container .button-container {
            text-align: center;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <h2>Manage Dieticians</h2>
    <a href="/adddietician">Add Dietician</a>
    <a href="/deletedietician">Delete Dietician</a>
    <a href="/updatedietician">Update Dietician</a>
    <a href="/viewalldieticians">View All Dieticians</a>
    <a href="/adminhome">Back to Home</a>
</div>

<div class="content">
    <div class="form-container">
        <h1>Add Dietician</h1>
        <form:form modelAttribute="dietician" method="post" action="/savedietician" enctype="multipart/form-data">
            <table>
                <tr>
                    <td><label for="email">Email</label></td>
                    <td><form:input path="email" type="email" id="email" required="required" /></td>
                </tr>
                <tr>
                    <td><label for="license">License Number</label></td>
                    <td><form:input path="license" id="license" required="required" /></td>
                </tr>
                <tr>
                    <td><label for="name">Full Name</label></td>
                    <td><form:input path="name" id="name" required="required" /></td>
                </tr>
                <tr>
                    <td><label for="pwd">Password</label></td>
                    <td><form:password path="pwd" id="pwd" required="required" /></td>
                </tr>
                <tr>
                    <td><label for="qualification">Qualification</label></td>
                    <td><form:input path="qualification" id="qualification" required="required" /></td>
                </tr>
                <tr>
                    <td><label for="contact">Contact Number</label></td>
                    <td><form:input path="contact" id="contact" required="required" /></td>
                </tr>
                <tr>
                    <td><label for="age">Age</label></td>
                    <td><form:input path="age" type="number" id="age" required="required" /></td>
                </tr>
                <tr>
                    <td><label for="gender">Gender</label></td>
                    <td>
                        <form:select path="gender" id="gender" required="required">
                            <form:option value="" label="Select Gender" />
                            <form:option value="Male" label="Male" />
                            <form:option value="Female" label="Female" />
                            <form:option value="Other" label="Other" />
                        </form:select>
                    </td>
                </tr>
                <tr>
                    <td><label for="pic">Profile Picture</label></td>
                    <td><form:input path="pic" type="file" id="pic" accept="image/*" /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <button type="submit">Add Dietician</button>
                        <button type="reset">Clear</button>
                    </td>
                </tr>
            </table>
        </form:form>
    </div>
</div>

</body>
</html>
