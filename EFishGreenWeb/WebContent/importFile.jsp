<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.io.*" %>


<%
   String savePath = "C:\\temp\\";

   String filename = "";
   
   ServletInputStream in = request.getInputStream();
   
   byte[] line = new byte[128];
   int i = in.readLine(line, 0, 128);
   int boundaryLength = i-2;
   String boundary = new String(line,0, boundaryLength);
   
   while (i != -1){
	   String newLine = new String(line,0,i);
	   if (newLine.startsWith("Content-Disposition: form-data; name=\"")){
		   String s = new String(line, 0, i-2);
		   int pos = s.indexOf("filename =\"");
		   if (pos != -1){
			   String filepath = s.substring(pos+10, s.length()-1);
			   pos = filepath.lastIndexOf("\\");
			   if(pos!=-1){
				   filename = filepath.substring(pos+1);
			   }
			   else
				   filename = filepath;
		   }
		   i = in.readLine(line, 0, 128);
		   i = in.readLine(line, 0, 128);
		   i = in.readLine(line, 0, 128);
		   
		   ByteArrayOutputStream buffer = new ByteArrayOutputStream();
		   newLine = new String(line,0,i);
		   while(i !=-1 && !newLine.startsWith(boundary)) {
			   buffer.write(line, 0, i);
			   i = in.readLine(line, 0, 128);
			   newLine = new String(line, 0, i);
		   }
		   try{
			   RandomAccessFile f = new RandomAccessFile(savePath + filename, "rw");
			   byte[] bytes = buffer.toByteArray();
			   f.write(bytes, 0, bytes.length-2);
			   f.close();
		   }
		   catch(Exception e){}
	   }
	   i = in.readLine(line, 0, 128);
   }
%>