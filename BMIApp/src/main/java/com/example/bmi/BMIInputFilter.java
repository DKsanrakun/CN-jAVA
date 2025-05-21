package com.example.bmi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

import java.io.IOException;

public class BMIInputFilter implements Filter {
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        String heightStr = request.getParameter("height");
        String weightStr = request.getParameter("weight");

        // Kiểm tra chuỗi null hoặc rỗng
        if (heightStr == null || heightStr.trim().isEmpty() ||
            weightStr == null || weightStr.trim().isEmpty()) {
            request.setAttribute("error", "Vui lòng nhập đầy đủ chiều cao và cân nặng.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
            return;
        }

        double height, weight;

        try {
            height = Double.parseDouble(heightStr.trim());
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Chiều cao phải là số hợp lệ.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
            return;
        }

        try {
            weight = Double.parseDouble(weightStr.trim());
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Cân nặng phải là số hợp lệ.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
            return;
        }

        // Kiểm tra chiều cao và cân nặng > 0
        if (height <= 0 || weight <= 0) {
            request.setAttribute("error", "Chiều cao và cân nặng phải lớn hơn 0.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
            return;
        }

        // Nếu hợp lệ, tiếp tục xử lý
        chain.doFilter(request, response);
    }

    public void init(FilterConfig config) {}
    public void destroy() {}
}
