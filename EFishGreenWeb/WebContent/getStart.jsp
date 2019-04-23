<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.LinkedHashMap" %>

<%
user user = new user();
session.setAttribute("user",user);
response.sendRedirect("navigation.jsp");
%>