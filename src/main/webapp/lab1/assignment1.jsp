<%@ page import="com.lab1.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.lab1.Dog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Assignemnt1</title>
</head>
<body>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<h1> c:forEach loog to print 1 to 10</h1>
    <ul>
        <c:forEach var="i" begin="1" end="10">
        <li>$${i}</li>
        </c:forEach>
    </ul>
<h1>print list 1,3,5,7,9</h1>
<ul>
    <c:forEach var="i" begin="1" end="10" step="2">
        <li>$${i}</li>
    </c:forEach>
</ul>
<h1>print 2,4,6,8,10</h1>
<ul>
    <c:forEach var="i" begin="2" end="10" step="2">
        <li>$${i}</li>
    </c:forEach>
</ul>
<% String[] words ={"one","two","three","four","five","six","seven","eight","nine","ten"};
   pageContext.setAttribute("words", words);
%>
<h1>print all elements of array</h1>
<ul>
<c:forEach items="${words}" var="w">
    <li>${w}</li>
</c:forEach>
</ul>
<h1>print "one","three","five","seven","nine"  of array</h1>
<ul>
<c:forEach items="${words}" var="w" step="2">
    <li>${w}</li>
</c:forEach></ul>
<%
List<Person> personList=new ArrayList<Person>();
personList.add(new Person("Tom",new Dog("Tommy")));
personList.add(new Person("Sam",new Dog("Sammy")));
personList.add(new Person("Gan",new Dog("grey")));
request.setAttribute("AllPerson",personList);
%>
<h1>print person name :   and persons' dog name</h1>
<ul><c:forEach items="${AllPerson}" var="p" >
    <li>${p.name} and his dog ${p.dog.name}</li>
</c:forEach></ul>
<%
    String str="one:two:three-four-five";
    request.setAttribute("str",str);
%>
<h1>print all words</h1>
<ul><c:forTokens items="${str}" delims="。" var="t">
    <li>${t}</li>
</c:forTokens></ul>
</body>
</html>
