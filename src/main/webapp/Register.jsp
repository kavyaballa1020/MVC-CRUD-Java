<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #4a90e2;
            --text-color: #333;
            --error-color: #e74c3c;
        }

        body {
            font-family: 'Roboto', Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: white;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 400px;
            max-width: 100%;
        }

        .header {
            background-color: var(--primary-color);
            color: white;
            padding: 30px 0;
            text-align: center;
            font-size: 24px;
            font-weight: 700;
        }

        form {
            padding: 30px;
        }

        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-group i {
            position: absolute;
            top: 50%;
            left: 10px;
            transform: translateY(-50%);
            color: #888;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 85%;
            padding: 12px 10px 12px 40px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 2px rgba(74, 144, 226, 0.2);
        }

        input[type="submit"] {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            font-weight: 600;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #3a7bc8;
        }

        .error-message {
            color: var(--error-color);
            margin-bottom: 15px;
            font-size: 14px;
        }

        .login-link {
            text-align: center;
            margin-top: 1px;
            margin-bottom: 20px;
            font-size: 14px;
        }

        .login-link a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function validate() {
            var fullname = document.form.fullname.value;
            var email = document.form.email.value;
            var username = document.form.username.value; 
            var password = document.form.password.value;
            var conpassword = document.form.conpassword.value;
            
            if (!fullname) { 
                alert("Full Name can't be blank"); 
                return false; 
            }
            else if (!email || !/^\S+@\S+\.\S+$/.test(email)) { 
                alert("Please enter a valid email address"); 
                return false; 
            }
            else if (!username) { 
                alert("Username can't be blank"); 
                return false; 
            }
            else if (password.length < 6) { 
                alert("Password must be at least 6 characters long."); 
                return false; 
            } 
            else if (password !== conpassword) { 
                alert("Confirm Password should match with the Password"); 
                return false; 
            } 
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="header">
            Create Account
        </div>
        <form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
            <div class="form-group">
                <i class="fas fa-user"></i>
                <input type="text" id="fullname" name="fullname" placeholder="Full Name" required />
            </div>
            
            <div class="form-group">
                <i class="fas fa-envelope"></i>
                <input type="email" id="email" name="email" placeholder="Email" required />
            </div>
            
            <div class="form-group">
                <i class="fas fa-user-circle"></i>
                <input type="text" id="username" name="username" placeholder="Username" required />
            </div>
            
            <div class="form-group">
                <i class="fas fa-lock"></i>
                <input type="password" id="password" name="password" placeholder="Password" minlength="6" required />
            </div>
            
            <div class="form-group">
                <i class="fas fa-lock"></i>
                <input type="password" id="conpassword" name="conpassword" placeholder="Confirm Password" minlength="6" required />
            </div>
            
            <div class="error-message">
                <%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%>
            </div>
            
            <input type="submit" value="Register" />
        </form>
        <div class="login-link">
            Already have an account? <a href="Login.jsp">Login</a>
        </div>
    </div>
</body>
</html>