<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

        :root {
            --primary-color: #3498db;
            --secondary-color: #5dade2;
            --hover-color: #1f8ef1;
            --text-color: #2c3e50;
            --bg-color: #ecf0f1;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--bg-color);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 90%;
            margin: auto;
        }

        h2 {
            color: var(--primary-color);
            margin-bottom: 20px;
            font-weight: 600;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: 500;
            color: var(--text-color);
            display: block;
            margin-bottom: 5px;
        }

        .form-group input {
            border-radius: 50px;
            padding: 12px 20px;
            border: 2px solid var(--secondary-color);
            width: 100%;
            box-sizing: border-box;
            transition: all 0.3s ease;
        }

        .form-group input:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
        }

        button {
            background-color: var(--primary-color);
            border: none;
            border-radius: 50px;
            padding: 12px 20px;
            color: white;
            font-weight: 600;
            transition: all 0.3s ease;
            width: 100%;
            cursor: pointer;
        }

        button:hover {
            background-color: var(--hover-color);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .message {
            margin-bottom: 20px;
            padding: 10px;
            border-radius: 5px;
            font-weight: bold;
            text-align: center;
        }

        .success {
            color: #28a745;
            background-color: #d4edda;
        }

        .error {
            color: #dc3545;
            background-color: #f8d7da;
        }

        .back-to-login {
            text-align: center;
            margin-top: 20px;
        }

        .back-to-login a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
        }

        .back-to-login a:hover {
            color: var(--hover-color);
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Forgot Password</h2>
        <form action="ForgotController" method="post">
            <div class="form-group">
                <label for="uid">Username:</label>
                <input type="text" id="uid" name="uid" required>
            </div>
            <div class="form-group">
                <label for="newpwd">New Password:</label>
                <input type="password" id="newpwd" name="newpwd" required>
            </div>
            <button type="submit">Update Password</button>
            <div class="back-to-login">
                Back to <a href="Login.jsp">Login</a>
            </div>
        </form>

        <% if (request.getAttribute("SUCCESS") != null) { %>
            <div class="message success">
                <%= request.getAttribute("SUCCESS") %>
            </div>
        <% } %>

        <% if (request.getAttribute("ERROR") != null) { %>
            <div class="message error">
                <%= request.getAttribute("ERROR") %>
            </div>
        <% } %>
    </div>
</body>
</html>
