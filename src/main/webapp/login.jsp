<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            text-align: center;
            width: 350px;
        }
        input {
            display: block;
            width: 90%;
            padding: 10px;
            margin: 15px auto;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        button {
            background-color: #0288d1;
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 8px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0277bd;
        }
        a {
            display: inline-block;
            margin-top: 15px;
            color: #0288d1;
            text-decoration: none;
        }
        .error {
            color: red;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Student Login</h2>

  <% if (request.getParameter("error") != null) { %>
    <p style="color:red;">
        <%= "unauthorized".equals(request.getParameter("error")) ? "Please login first." : "Invalid email or password." %>
    </p>
<% } %>


    <form action="loginServlet" method="post">
        <input type="text" name="email" placeholder="Enter Email" required />
        <input type="password" name="password" placeholder="Enter Password" required />
        <button type="submit">Login</button>
    </form>

    <a href="signup.jsp">Not have an Account? Register</a>
    <hr>
    <div><a href="index.jsp">Return to HomePage</a></div>    
</div>

</body>
</html>
