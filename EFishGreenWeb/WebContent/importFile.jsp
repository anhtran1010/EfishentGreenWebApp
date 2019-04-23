<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import = "user.*"%>

<%
parse importFile = new parse();
importFile.run();
LinkedHashMap<String, String[]> data = importFile.get();
user user = (user)session.getAttribute("user");
user.setImport(data);
%>