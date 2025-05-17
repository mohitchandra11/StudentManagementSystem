<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #e3f2fd;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .signup-form {
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #1976d2;
        }
        label {
            display: block;
            margin: 15px 0 5px;
        }
        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #90caf9;
            border-radius: 5px;
        }
        button {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            background-color: #1976d2;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
        }
        .login-link {
            margin-top: 15px;
            text-align: center;
        }
        .login-link a {
            color: #1976d2;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="signup-form">
    <h2>Sign Up</h2>
    <form action="SignupServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" required>

        <label for="email">Email:</label>
        <input type="email" name="email" required>

        <label for="course">Course:</label>
        <input type="text" name="course" required>
        
        <label for="password">Password:</label>
        <input type="password" name="password" required>


        <button type="submit">Register</button>
    </form>
    <div class="login-link">
        Already registered? <a href="login.jsp">Login here</a>
        <hr>
     
      <div><a href="index.jsp" >Return to HomePage </a></div>  
    </div>
</div>

</body>
</html>
