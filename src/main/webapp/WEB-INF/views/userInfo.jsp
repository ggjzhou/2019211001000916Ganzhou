<%@ page import="com.ganzhou.model.User" %><%--
  Created by IntelliJ IDEA.
  User: 86159
  Date: 2021/4/10
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User Info</h1>
<%--<%--%>
<%--    Cookie [] allcookies=request.getCookies();--%>
<%--    for (Cookie c:allcookies){--%>
<%--        out.println("<br/>"+c.getName()+"---"+c.getValue());--%>
<%--    }--%>
<%--%>--%>
<%
    User u = (User) session.getAttribute("user");
%>

<table>
    <tr>
        <td>username:</td><td><%=u.getUsername()%></td>
    </tr><tr>
        <td>password:</td><td><%=u.getPassword()%></td>
    </tr><tr>
        <td>email:</td><td><%=u.getEmail()%></td>
    </tr><tr>
        <td>gender:</td><td><%=u.getGender()%></td>
    </tr><tr>
        <td>birthDate:</td><td><%=u.getBirthDate()%></td>
    </tr>

</table>
<a href="updateUser">update</a>

<%@include file="footer.jsp"%>
