import java.io.*;

import javax.lang.model.util.ElementScanner6;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.sql.*;

public class StudentValidation extends HttpServlet{

    protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
    {
        PrintWriter out=res.getWriter();
        res.setContentType("text/html");
        
        String docType ="<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
        "Transitional//EN\">\n";
        String title = "Message page";
        String message="";
        boolean flag = false;

        String rollno=req.getParameter("rollno");
        String firstname=req.getParameter("firstname");
        String lastname=req.getParameter("lastname");
        String email=req.getParameter("email");    
        String gender=req.getParameter("gender");
        String age=req.getParameter("age");
        String city=req.getParameter("city");
        String phone=req.getParameter("phone");
        
       
        if(rollno.equals("") || firstname.equals("") || lastname.equals("") || email.equals("") || gender.equals("") || age.equals("") || city.equals("") || phone.equals(""))
        {
            flag = true;
            message ="Please check All field  No field should be empty";
        }
        else if(!ValidateName(firstname) || !ValidateName(lastname)){
            flag = true;
            message = "Name must be String...! Number is not allowed";
        }
        else if(Integer.parseInt(rollno) < 0){
            flag = true;
            message = "Rollno must be positive number";
        }
        else if(Integer.parseInt(age) < 0 ) {
            flag = true;
            message = "Age must be a positive number";
        }
        else if(!ValidateName(city)){
            flag = true;
            message = "City must be String.. ! Number is not allowed";
        }
        else if(ValidatePhoneNo(phone)){
            flag = true;
            message = "Phone number must be positive numeber with length 10";
        }
        else if(!email.matches("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")){  //
            flag = true;
            message = "Invalid Email Id";
        }
        else{
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                String dbUrl = "jdbc:mysql://localhost/dbstudent";
                String user = "root";
                String password = "";
               
                con = DriverManager.getConnection(dbUrl, user, password);
                st = con.createStatement();
                        
                String queary="Select * from student";
                rs = st.executeQuery(queary);
                int count=0;
                while(rs.next())
                {
                    if(Integer.parseInt(rollno) == rs.getInt("rollno"))
                    { 
                        count++;
                        message = "Roll No Already Exist....!";
                    }
                }
                int a_age = Integer.parseInt(age);
                int a_rollno = Integer.parseInt(rollno);

                if(count==0){
    
                    //queary = String.format("INSERT INTO student VALUES (%d,'%s','%s','%s','%s',%d,'%s','%s')",3,firstname,lastname,email,gender,a_age,city,phone);
                    //st = con.createStatement();
                    //st.executeUpdate(queary);
                    queary = "INSERT INTO student VALUES ("+a_rollno+",'"+firstname+"','"+lastname+"','"+email+"','"+gender+"',"+a_age+",'"+city+"','" + phone +"')";                 // queary =  "INSERT into student VALUES("1,'hello','user','dfsdf','dfsdfs',22,'fdfsd','sadA'); 
                   
                    st = con.createStatement();
                    st.executeUpdate(queary);
            
                    message = "Record Inserted Successfully....!";
                }
                flag = true;
               

            } catch (SQLException ex) {
                System.out.println("SQLException: " + ex.getMessage());
                System.out.println("SQLState: " + ex.getSQLState());
                System.out.println("VendorError: " + ex.getErrorCode());

            }catch(Exception e){
                System.out.println("Can't Connect to database server");
                e.printStackTrace();
            }
            finally{
                if(rs !=null){
                    try{
                        rs.close();
                    }catch(SQLException sqlEX){}
                    rs =null;
                }
                if(st != null){
                    try{
                        st.close();
                    }catch(SQLException sqlEx){}
                    st = null;
                }
                if(con !=null){
                    try{
                        con.close();
                    }catch(SQLException sqlEX){}
                    con = null;
                }
            }  
            
        }

        if(flag){
            out.println(docType + 
            "<HTML>\n" +
            "<HEAD><TITLE>" + title + "</TITLE></HEAD>\n" +
            "<BODY BGCOLOR=\"#FDF5E6\">\n" +
            "<H1 ALIGN=CENTER>" + message + "</H1>\n" +
            "</BODY></HTML>");
        }
        
        

    }
    public static boolean ValidateName(String str) {
        //str = str.toLowerCase();
       
        if(!str.matches("^[a-zA-Z]+$"))
        { 
            return false;
        }
        return true;
     }

    public static boolean ValidateGender(String gender)
    {
        if(!gender.matches(".*\\bMale|Female|Others\\b.*"))
        {
            System.out.println("Invalid Gender!");
            return false;
        }
        else
        {
            return true;
        }
    }

    public static boolean ValidatePhoneNo(String Phoneno)
    {
        if(Phoneno.length()>12)
        {

            return true;
        }
        else
        {
            return false;
        }
    }

    public static boolean ValidateAddress(String Address)
    {
        if(Address.length()<10) 
        {
            System.out.println("Address' minimum length should be 10");
            return false;
        }
        else
        {
            return true;
        }
    }

    
}