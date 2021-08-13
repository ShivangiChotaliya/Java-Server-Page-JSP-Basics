import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

//@WebServlet("/Add")
public class AddServlet extends HttpServlet {
    
    public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
    {
        int a =Integer.parseInt(req.getParameter("num1"));
        int b =Integer.parseInt(req.getParameter("num2"));

        int c = a + b;
        PrintWriter out = res.getWriter();
        out.println("Ouput : " + c);
    }
}
