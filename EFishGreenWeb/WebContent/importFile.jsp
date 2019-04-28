<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import = "controller.*,java.io.File;"%>

<%
File file = request.getParameter("datafile");
parse imp = new parse();
System.out.println("here");
imp.run();
System.out.println("run");
LinkedHashMap<String, String[]> data = imp.get();
User user = (User)session.getAttribute("user");
user.setImport(data);
%>