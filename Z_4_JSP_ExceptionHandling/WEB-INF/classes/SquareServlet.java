import java.io.*;

import javax.rmi.ssl.SslRMIClientSocketFactory;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.*;

@WebServlet("/square")
public class SquareServlet extends HttpServlet {
    
    public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
    {    
        int c=0;
    
        Cookie cookies[] = req.getCookies();
        for(Cookie cok : cookies){
            if(cok.getName().equals("c")){
                 c = Integer.parseInt(cok.getValue());
            }
        }

        PrintWriter out=res.getWriter();
        out.println(" Square is  :" + (c*c));
        
    }
}



