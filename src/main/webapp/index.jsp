<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            padding: 50px;
            min-height: 100vh;
            background-image: url('https://via.placeholder.com/1920x1080'); /* Add your background image URL here */
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
        }

        .overlay {
            background-color: rgba(255, 255, 255, 0.85); /* Light overlay for a softer look */
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: all 0.5s ease;
        }

        h1 {
            font-size: 3em;
            margin-bottom: 20px;
            color: #2c3e50;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.1);
        }

        p {
            font-size: 1.2em;
            margin-bottom: 30px;
            line-height: 1.6;
            color: #34495e;
        }

        .btn {
            display: inline-block;
            margin: 20px 15px;
            padding: 15px 30px;
            font-size: 1.2em;
            background-color: #ffb3b3; /* Light creamy color */
            color: #333;
            text-decoration: none;
            border-radius: 50px;
            transition: all 0.5s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .btn:hover {
            background-color: #ff99cc; /* Slight darker tone */
            transform: translateY(-5px);
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
        }

        .btn:active {
            transform: translateY(0);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .footer {
            margin-top: 30px;
            font-size: 1.1em;
            color: #777;
        }

        .footer a {
            color: #555;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 40px;
            text-align: left;
        }

        .feature-card {
            background: linear-gradient(to right, #fbc2eb, #a6c1ee); /* Soulful gradient background */
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            color: #2c3e50;
            transition: all 0.5s ease;
        }

        .feature-card h3 {
            margin-bottom: 15px;
            font-size: 1.6em;
            color: #e74c3c; /* Creamy red */
        }

        .feature-card p {
            font-size: 1em;
            line-height: 1.4;
            color: #7f8c8d;
        }

        .feature-card:hover {
            background: linear-gradient(to right, #a6c1ee, #fbc2eb); /* Reverse gradient for hover effect */
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* Interactive dynamic background color on hover for the overlay */
        .overlay:hover {
            background-color: rgba(255, 255, 255, 1); /* Lighter overlay when hovered */
        }

    </style>
</head>
<body>

    <div class="overlay">
        <h1>Welcome to the Student Management System</h1>
        <p>Manage your student data effortlessly. Access your assignments, check your attendance, track your results, and much more, all in one place.</p>
        
        <a class="btn" href="login.jsp">Already Have an Account? Login</a>
        <a class="btn" href="signup.jsp">Don't Have an Account? Register</a>

        <div class="features">
            <div class="feature-card">
                <h3>Attendance Tracking</h3>
                <p>Keep track of your class attendance easily. Stay on top of your academic progress.</p>
            </div>
            <div class="feature-card">
                <h3>Result Management</h3>
                <p>Access your exam results instantly, monitor your performance, and plan your study schedule accordingly.</p>
            </div>
            <div class="feature-card">
                <h3>Assignment Submissions</h3>
                <p>Submit assignments, view deadlines, and track your academic tasks from one place.</p>
            </div>
            <div class="feature-card">
                <h3>Syllabus Overview</h3>
                <p>Review and download your course syllabus for a better understanding of the course structure.</p>
            </div>
        </div>
<br>
<br>
<br>
<br>
<br>
<br>

        <div class="footer">
            
            <p>WebTech Assignment - Designed and Developed by <strong>Mohit Chandra (Roll. No. 220050101074)</strong><br> </p>
            <p><a href="about.jsp">About Us</a> | <a href="contact.jsp">Contact</a></p>
            <hr>
            <p>&copy; 2025 Student Management System. All Rights Reserved.</p>
        </div>
    </div>

</body>
</html>
