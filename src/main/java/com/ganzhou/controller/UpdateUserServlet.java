package com.ganzhou.controller;

import com.ganzhou.dao.UserDao;
import com.ganzhou.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Date;



@WebServlet(name = "UpdateUserServlet", value = "/updateUser")
public class UpdateUserServlet extends HttpServlet {
    Connection con=null;
    Date birthDate;
    @Override
    public void init() throws ServletException {
        con = (Connection) getServletContext().getAttribute("con");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/updateUser.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        int id = Integer.parseInt(request.getParameter("id"));
//        String username=request.getParameter("username");
//        String password=request.getParameter("password");
//        String Email=request.getParameter("Email");
//        String gender=request.getParameter("gender");
//        Date birthDate = Date.valueOf(request.getParameter("birthDate"));
//
//        User us=new User(id,username,password,Email,gender,birthDate);
//        us.setId(id);
//
//        us.setUsername(username);
//        us.setPassword(password);
//        us.setEmail(Email);
//        us.setGender(gender);;
//        us.setBirthDate(birthDate);
//        UserDao userDao=new UserDao();
//        try {
//            int user =userDao.updateUser(con,us);
//            if (user ==1) {
//
//                request.getRequestDispatcher("WEB-INF/views/userInfo.jsp").forward(request, response);
//            } else {
//            request.getRequestDispatcher("/login").forward(request, response);
//            }
//        }
//            catch(SQLException throwables){
//                throwables.printStackTrace();
//            }
//
//    }
    int id = Integer.parseInt(request.getParameter("id"));
    String Username = request.getParameter("username");
    String Password = request.getParameter("password");
    String Email = request.getParameter("email");
    String Gender = request.getParameter("gender");
    Date BirthDate = Date.valueOf(request.getParameter("birthDate"));
    UserDao userDao=new UserDao();
    User user =new User(id,Username,Password,Email,Gender,BirthDate);
        try {
        int flag = userDao.updateUser(con,user);
        if (flag!=0) {
            request.getRequestDispatcher("/login").forward(request, response);
        } else {
            request.setAttribute("message", "Username or Password Error!!!");
            request.getRequestDispatcher("WEB-INF/views/updateUser.jsp").forward(request, response);
        }
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
}
}
