/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class i2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/city";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root");
            Statement st = con.createStatement();         
            Statement st1 = con.createStatement();        
            Statement st2 = con.createStatement();
            String vname = request.getParameter("a1");
            String vpass = request.getParameter("a2");
                 HttpSession so = request.getSession(true);
  
                 System.out.println(vname);
                System.out.println(vpass);
                	String b2=null;
                	String b3=null;
                        String b4=null; String b5=null;
            if ((request.getParameter("s1"))!= null) {
                
                int flag = 0;
               if((vname.equalsIgnoreCase(""))||(vname.equalsIgnoreCase(""))){
                 request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please Enter all values");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("i2.jsp");
		 requestdispatcher.forward(request, response);
               }else{
                   
                   
                
                 
                 
                       if((vname.equalsIgnoreCase("Admin"))&&(vpass.equalsIgnoreCase("Admin007"))) {
                     b4="Admin";
	   	 flag=1;
                }
                
                      ResultSet rs3 = (ResultSet) st2.executeQuery("select * from c_reg where uname='"+vname+"'");
        
                 
	       if(rs3.next())
	   	      {
	   		b2=rs3.getString(1);
                        b3=rs3.getString(2);
                         	   
	        if((vname.equalsIgnoreCase(b2))&&(vpass.equalsIgnoreCase(b3))) {
                     b4="User";
                     b5=rs3.getString(3);
	   	 flag=1;
                }
                      }
              
                so.setAttribute("un1", vname);
                 so.setAttribute("un2", vpass);
                    so.setAttribute("un3", b5);
                if((flag==1)&&(b4.equals("Admin"))){
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("a1.jsp");
		 requestdispatcher.forward(request, response);
                }else if((flag==1)&&(b4.equals("User"))){
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u1.jsp");
		 requestdispatcher.forward(request, response);
                }
                else{
                      request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Invalid Username && Password");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("i2.jsp");
		 requestdispatcher.forward(request, response);
                }
               }
           
 
        

            } else{
                      request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Invalid Username && Password");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("i2.jsp");
		 requestdispatcher.forward(request, response);
                }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {            
            out.close();
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
