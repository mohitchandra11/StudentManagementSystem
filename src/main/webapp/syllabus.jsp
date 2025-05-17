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
    <title>Syllabus</title>
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
    <h2>📚 Your Syllabus</h2>
    <p>WEB TECHNOLOGY (CST-027)<br>

                                     <br>  Credits-03<br>
COURSE OBJECTIVES: <br>

The objectives of this course are to<br>
1. Understand about client-server communication and protocols used during communication.<br>
2. Design interactive web pages using Scripting languages.<br>
3. Learn server-side programming using servlets and JSP.<br>
4. Develop web pages using XML/XSLT.<br>
<br>
<br>
<br>
COURSE OUTCOMES:<br>
<br>
 On successful completion of this course, the student will be able to:<br>
1. Design simple web pages using mark-up languages like HTML and XHTML.<br>
2. Create dynamic web pages using DHTML and java script that is easy to navigate and use.<br>
3. Program server-side web pages that have to process request from client side web pages.<br>
4. Represent web data using XML and develop web pages using JSP.<br>
5. Understand various web services and how these web services interact.<br>
<br>
<br>
UNIT-I <br>
Introduction to HTML: HTML Common tags- List, Tables, images, forms, Frames; Cascading Style sheets;
Introduction to JavaScript: Scripts, Objects in Java Script, Dynamic HTML with Java Script
XML: Document type definition, XML Schemas, Document Object model, Presenting XML, Using XML
Processors: DOM and SAX<br>
<br>
<br>
UNIT-II <br>
Java Beans: Introduction to Java Beans, Advantages of Java Beans, BDK Introspection, Using Bound
properties, Bean Info Interface, Constrained properties Persistence, Customizes, Java Beans API, Introduction to
EJB’s<br>
<br>
<br>
UNIT-III<br>
 Web Servers and Servlets: Tomcat web server, Introduction to Servelets: Lifecycle of a Serverlet,
JSDK, The Servelet API, Thejavax.servelet Package, Reading Servelet parameters, Reading Initialization
parameters. The javax.servelet HTTP package, Handling Http Request & Responses, Using Cookies-Session
Tracking, Security Issues.<br>
<br>
<br>
UNIT-IV <br>
Introduction to JSP: The Problem with Servelet. The Anatomy of a JSP Page, JSP Processing. JSP
Application Design with MVC Setting Up and JSP Environment: Installing the Java Software Development Kit,
Tomcat Server & Testing Tomcat<br>
<br>
<br>
UNIT-V <br>
<br>
JSP Application Development: Generating Dynamic Content, Using Scripting Elements Implicit JSP
Objects, Conditional Processing – Displaying Values Using an Expression to Set an Attribute, Declaring Variables and Methods Error Handling and Debugging Sharing Data Between JSP pages, Requests, and Users
Passing Control and Date between Pages – Sharing Session and Application Data – Memory Usage
Considerations.
<br>
<br>
TEXT BOOK:<br>
<br><br>
<br>
1. Jeffrey C. Jackson, "Web Technologies--A Computer Science Perspective", Pearson Education, 2006.<br><br><br>
REFERENCE BOOK:<br>
1. Robert. W. Sebesta, "Programming the World Wide Web", 8thEdition(2022), Pearson Education, 2007.<br>
2. Deitel, Deitel, Goldberg, "Internet & World Wide Web How To Program", Third Edition, Pearson
Education, 2006.<br>
3. Marty Hall and Larry Brown, Core Web Programming Second Edition, ‖ ‖ Volume I and II, Pearson
Education, 2001.<br>
4. Bates, ―Developing Web Applications‖, Wiley, 2006 </p>

    <form action="student.jsp">
        <button class="btn">Return to Dashboard</button>
    </form>
</div>

</body>
</html>
