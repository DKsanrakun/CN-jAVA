package com.example.bmi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class BMIServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double height = Double.parseDouble(request.getParameter("height"));
        double weight = Double.parseDouble(request.getParameter("weight"));

        double bmi = weight / (height * height);
        request.setAttribute("bmi", bmi);

        RequestDispatcher rd = request.getRequestDispatcher("bmi.jsp");
        rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("bmi.jsp");
    }
}
