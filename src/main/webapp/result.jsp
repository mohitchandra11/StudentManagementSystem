<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
    String studentName = (String) session.getAttribute("name");
    if (studentName == null) {
        response.sendRedirect("login.jsp?error=unauthorized");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result</title>
    <style>
        body { font-family: Arial; background: #f0f0f0; padding: 30px; }
        .container {
            max-width: 800px; margin: auto; background: white;
            padding: 30px; border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        h2 { color: #4CAF50; }
        .btn {
            margin-top: 30px; padding: 10px 20px;
            background-color: #2196F3; color: white;
            border: none; border-radius: 6px; font-size: 16px;
            cursor: pointer;
        }
        .btn:hover { background-color: #0b7dda; }
    </style>
</head>
<body>

<div class="container">
    <h2>🧾 Your Result</h2>
    <p>This feature is coming soon.</p>

    <form action="student.jsp">
        <button class="btn">Return to Dashboard</button>
    </form>
</div>

</body>
</html>
