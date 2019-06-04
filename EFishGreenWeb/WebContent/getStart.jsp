<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.LinkedHashMap,controller.*" %>


<%
LinkedHashMap<String, String[]> input = new LinkedHashMap<>();
User usr = new User(input);
session.setAttribute("user",usr);
response.sendRedirect("navigation.jsp");
%>