
import java.io.IOException;
import java.util.Arrays;
import java.util.*;
import javax.servlet.annotation.WebServlet; 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
        
        List<Student> stud = Arrays.asList(new Student(1,"Shivangi"),new Student(2, "janvi"), new Student(3,"nairutvi"));

     
        Student s = new Student(1, "Shivangi");

        request.setAttribute("students" ,stud);
        
        RequestDispatcher rd = request.getRequestDispatcher("Display.jsp");
        rd.forward(request,response);

    }
}