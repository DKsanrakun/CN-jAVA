@WebFilter("/count")
public class InputFilter implements Filter {
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        String input = request.getParameter("inputString");
        if (input == null || input.trim().isEmpty()) {
            request.setAttribute("error", "Chuỗi không được rỗng!");
            request.getRequestDispatcher("count.jsp").forward(request, response);
            return;
        }
        chain.doFilter(request, response);
    }
}
