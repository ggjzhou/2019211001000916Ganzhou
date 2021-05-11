package com.ganzhou.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebFilter(filterName = "HelloFilter",urlPatterns = {"/*"})
public class HelloFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {
        System.out.println("i am HelloFilter -->int()");
    }

    public void destroy() {
        System.out.println("i am HelloFilter -->destroy()");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        System.out.println("i am HelloFilter -->doFilter() -before servlet (request come here)");
        chain.doFilter(request, response);
        System.out.println("i am HelloFilter -->doFilter() -After servlet (request come here)");
    }
}
