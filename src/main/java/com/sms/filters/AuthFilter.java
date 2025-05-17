package com.sms.filters;

import java.io.IOException;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.*;

@WebFilter({"/student.jsp", "/attendance.jsp", "/result.jsp", "/assignment.jsp", "/syllabus.jsp"})
public class AuthFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        HttpSession session = req.getSession(false);

        if (session != null && session.getAttribute("email") != null) {
            chain.doFilter(request, response); // User is logged in, proceed to requested page
        } else {
            res.sendRedirect("login.jsp?error=unauthorized"); // Not logged in, redirect to login page
        }
    }

    public void init(FilterConfig filterConfig) throws ServletException {}

    public void destroy() {}
}
