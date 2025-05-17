<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Student Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .header {
            background: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .dashboard {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 20px;
            padding: 30px;
            max-width: 900px;
            margin: auto;
        }
        .card {
            background: white;
            border-radius: 10px;
            padding: 30px 20px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.2s;
            cursor: pointer;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card h3 {
            margin: 10px 0;
        }
        .footer {
            text-align: center;
            margin: 30px;
        }
        .btn {
            padding: 10px 20px;
            background: #2196F3;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
        }
        .btn:hover {
            background: #0b7dda;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Welcome, <%= studentName != null ? studentName : "Student" %>!</h1>
        <p>Student Management System Dashboard</p>
    </div>

    <div class="dashboard">
        <div class="card" onclick="location.href='attendance.jsp'">
            <h3>📅 Attendance</h3>
            <p>View your attendance record</p>
        </div>
        <div class="card" onclick="location.href='result.jsp'">
            <h3>🧾 Result</h3>
            <p>Check your exam results</p>
        </div>
        <div class="card" onclick="location.href='assignment.jsp'">
            <h3>📝 Assignment</h3>
            <p>See upcoming assignments</p>
        </div>
        <div class="card" onclick="location.href='syllabus.jsp'">
            <h3>📚 Syllabus</h3>
            <p>Review your course syllabus</p>
        </div>
    </div>

    <div class="footer">
        
        
   
    <a class="btn" href="index.jsp">Exit</a>
  
    


    </div>

</body>
</html>
