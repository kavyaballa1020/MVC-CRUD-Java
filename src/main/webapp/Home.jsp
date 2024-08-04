<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
            text-align: center;
            margin-top: 50px;
        }
        .container {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: auto;
        }
        .message {
            font-size: 1.4em;
            color: #28a745; /* Bootstrap success color */
            font-weight: 600;
            margin-bottom: 20px;
        }
        a {
            color: #007bff; /* Bootstrap primary color */
            text-decoration: none;
            font-weight: 500;
        }
        a:hover {
            text-decoration: underline;
        }
        h2 {
            color: #333;
            margin-bottom: 30px;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Home Page</h2>
        <p class="message">User Registration Successful</p>
        <p>Please <a href="Login.jsp">log in</a> to continue.</p>
    </div>
</body>
</html>
