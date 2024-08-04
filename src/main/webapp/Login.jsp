<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

        :root {
            --primary-color: #6c5ce7;
            --secondary-color: #a29bfe;
            --accent-color: #fd79a8;
            --text-color: #2d3436;
            --bg-color: #dfe6e9;
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
        .login-container {
            background-color: #ffffff;
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 90%;
            margin: auto;
        }
        .login-title {
            color: var(--primary-color);
            margin-bottom: 30px;
            font-weight: 600;
            text-align: center;
        }
        .form-control {
            border-radius: 50px;
            padding: 12px 20px;
            border: 2px solid var(--secondary-color);
            transition: all 0.3s ease;
        }
        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.2rem rgba(108, 92, 231, 0.25);
        }
        .input-group-text {
            border-radius: 50px;
            background-color: var(--secondary-color);
            color: white;
            border: none;
        }
        .btn-login {
            background-color: var(--primary-color);
            border: none;
            border-radius: 50px;
            padding: 12px 20px;
            font-weight: 600;
            transition: all 0.3s ease;
            color: white;
        }
        .btn-login:hover {
            background-color: var(--accent-color);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        .link-text {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            display: inline-block;
            padding: 8px 12px;
            border-radius: 20px;
            background-color: rgba(108, 92, 231, 0.1);
        }
        .link-text:hover {
            color: var(--accent-color);
            background-color: rgba(253, 121, 168, 0.2);
            text-decoration: none; */
        }
        .link-text:active {
            color: var(--primary-color);
            background-color: rgba(108, 92, 231, 0.2);
        }
        .text-center {
            text-align: center;
            margin-top: 20px;
        }
        .text-center span {
            color: var(--text-color);
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2 class="login-title">Welcome Back</h2>
        <% if(request.getAttribute("ERROR") != null) { %>
        <div class="alert alert-danger" role="alert">
            ${requestScope.ERROR}
        </div>
        <% } %>
        <form action="LoginServlet" method="post">
            <div class="mb-4">
                <div class="input-group">
                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
                </div>
            </div>
            <div class="mb-4">
                <div class="input-group">
                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                </div>
            </div>
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-login">Sign In</button>
            </div>
        </form>
        <div class="text-center mt-4">
            <span>Don't have an account?</span> <a href="Register.jsp" class="link-text">Register</a><br>
            <span>or</span><br>
            <a href="Forgot.jsp" class="link-text">Forgot Password?</a>
        </div>
    </div>
</body>
</html>
