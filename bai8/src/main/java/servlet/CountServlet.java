@WebServlet("/count")
public class CountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String input = request.getParameter("inputString");
        int count = input.length();

        // Ghi vào session để listener theo dõi
        HttpSession session = request.getSession();
        session.setAttribute("inputString", input);

        request.setAttribute("count", count);
        request.getRequestDispatcher("count.jsp").forward(request, response);
    }
}
