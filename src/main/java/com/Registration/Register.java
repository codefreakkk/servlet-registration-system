package com.Registration;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Register extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        String name = req.getParameter("email");
        String pass = req.getParameter("pass");

        PrintWriter out = res.getWriter();
        if(name.length() != 0 && pass.length() != 0) {
            out.println("1");
        } else {
            out.println("0");
        }
    }

//    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
//        res.setContentType("text/html");
//        String name = req.getParameter("email");
//        String pass = req.getParameter("pass");
//
//        PrintWriter out = res.getWriter();
//        if(name.length() != 0 && pass.length() != 0) {
//            out.println("Your name is " + name);
//            out.println("Your pass is " + pass);
//        } else {
//            out.println("Something Went Wrong");
//        }
//    }
}
