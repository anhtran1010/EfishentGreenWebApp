<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.LinkedHashMap,controller.*" %>


<%
	User usr = new User();
session.setAttribute("user",usr);
response.sendRedirect("navigation.jsp");
%>