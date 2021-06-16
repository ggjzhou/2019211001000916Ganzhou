<%--
  Created by IntelliJ IDEA.
  User: 86159
  Date: 2021/6/8
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>validate</title>
</head>
<body>
<jsp:useBean id="user" class="com.lab2.Login" scope="request">
    <jsp:setProperty name="user" property="username" value="${param.username}"/>
    <jsp:setProperty name="user" property="password" value="${param.password}"/>
</jsp:useBean>

<%
    //todo 3: use if check username is admin and password is admin

    if("admin".equals(user.getUsername())&&"admin".equals(user.getPassword())){
%><jsp:forward page="welcome.jsp"/>

<%--todo 4: use jsp:forward to welcome.jsp page--%>

<%--todo 5: else part{ --%>

<%--// todo 6: print username or password error message--%>
<%}else {out.println("username or password error message\n ");
%>
<jsp:include page="login.jsp"/>
<%}%>
<%--todo 7: use jsp:include login.jsp page --%>
<%--todo 8: close else --%>


</body>
</html>
