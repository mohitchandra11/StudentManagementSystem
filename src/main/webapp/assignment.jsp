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
    <title>Assignment</title>
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
    <h2>📝 Your Assignments</h2>
<p>
        <b>Assignment:</b> Create a <i>Web Technology Application</i> using the technologies you have learned in this course, such as <u>HTML, CSS, JavaScript, JSP, Servlets, JavaBeans, JDBC, and XML</u>. The application must be deployed on the <mark>Apache Tomcat Server</mark>.<br><br>
        <b>Objective:</b> Build a complete dynamic web application. For example, you can create a <i>Student Feedback System, Online Quiz App, Library Management System</i>, or any idea of your choice.<br><br>
        <b>Requirements:</b><br>
        - Frontend must be created using HTML, CSS, and JavaScript.<br>
        - Use JSP and Servlets for backend processing.<br>
        - Data should be stored and retrieved using JDBC and MySQL.<br>
        - Implement JavaBeans for reusable logic.<br>
        - Use XML where applicable (e.g., configuration or data exchange).<br>
        - Deploy and run the project on Apache Tomcat Server.<br><br>
        <b>Submission:</b> Submit the source code, SQL file, screenshots, and a video demo (optional).
    </p>
    <form action="student.jsp">
        <button class="btn">Return to Dashboard</button>
    </form>
</div>

</body>
</html>
