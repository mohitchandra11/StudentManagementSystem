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
    <title>Attendance</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f0f0;
            padding: 30px;
        }
        .container {
            max-width: 800px;
            background: white;
            padding: 30px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        h2 {
            color: #4CAF50;
        }
        .btn {
            margin-top: 30px;
            padding: 10px 20px;
            background-color: #2196F3;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0b7dda;
        }
        
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .attendance-table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .attendance-table th, .attendance-table td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        .attendance-table th {
            background-color: #4CAF50;
            color: white;
        }
        .attendance-status {
            padding: 5px;
            border-radius: 5px;
        }
        .present {
            background-color: #4CAF50;
            color: white;
        }
        .absent {
            background-color: #f44336;
            color: white;
        }
        .percentage {
            font-weight: bold;
            color: #333;
        }
        .form-container {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
   
</head>
<body>

<div class="container">
    <h2>📅 Your Attendance</h2>
   <div class="form-container">
        <form id="attendanceForm" onsubmit="return showAttendance()">
            <label for="rollNumber">Enter Your Roll Number: </label>
            <input type="text" id="rollNumber" name="rollNumber" required><br>
            <button type="submit">View Attendance</button>
        </form>
    </div>

    <!-- Attendance Table for the student (this will always show 'No records found') -->
    <div id="attendanceResult">
        <div class="no-records">No records found</div>

        <!-- You can keep the table structure for future use or dynamic population -->
        <table class="attendance-table">
            <thead>
                <tr>
                    <th>Roll Number</th>
                    <th>Student Name</th>
                    <th>Attendance Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <!-- Dynamically generated content will go here (but for now, it will show 'No records found') -->
            </tbody>
        </table>

        <!-- Display overall attendance percentage (Static message for now) -->
        <div style="text-align: center; margin-top: 20px;">
            <p class="percentage">Attendance Percentage: --%</p>
            <p>Status: <span style="color: red;">Not Eligible for Exams</span></p>
        </div>
    </div>

    <script>
        function showAttendance() {
            // Hide the attendance table (we don't want to display it in this version)
            document.querySelector('.attendance-table').style.display = 'none';

            // Show the "No records found" message instead
            document.querySelector('.no-records').style.display = 'block';

            // Return false to prevent form submission and page reload
            return false;
        }
    </script>

    <form action="student.jsp">
        <button class="btn">Return to Dashboard</button>
    </form>
</div>

</body>
</html>
