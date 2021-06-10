package com.lab2;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "LoginFilter",urlPatterns = {"/lab2/welcome.jsp","/lab2/validate.jsp"})
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
        System.out.println("i am LoginFilter -->int()");
    }

    public void destroy() {
        System.out.println("i am LoginFilter -->destroy()");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        System.out.println("LoginFilter -->before chain");
        HttpServletRequest req=(HttpServletRequest) request;
        HttpServletResponse res=(HttpServletResponse)response;
        Login user=(Login) req.getAttribute("user");

        if(user.getUsername() != null && user.getPassword() != null){
            req.getRequestDispatcher("/lab2/welcome.jsp").forward(req,res);
        }else {
            res.sendRedirect("login.jsp");
        }
        chain.doFilter(request, response);
        System.out.println("LoginFilter -->after chain");
    }
}
