<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Navigation Page</title>
<style>
.background-image {
  background-image: url("C:/Users/anhbt/git/EfishentGreenWebApp/EFishGreenWeb/img/background.jpg");
  background-color: #ffffff;
  height: 700px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.transbox {
  background-color: #ffffff;
  opacity: 0.6;
  filter: alpha(opacity=60); /* For IE8 and earlier */
}
h1 {
	color: green;
	font-family: 'Aldrich';font-size: 40px; 
	text-align:center;
}
.button {
border:1px solid #e3e3e3; -webkit-border-radius: 3px; -moz-border-radius: 3px;border-radius: 3px;font-size:20px;font-family:arial, helvetica, sans-serif; padding: 10px 10px 10px 10px; text-decoration:none; display:inline-block;text-shadow: -1px -1px 0 rgba(0,0,0,0.3);font-weight:bold; color: #FFFFFF;
 background-color: #FFFFFF; background-image: -webkit-gradient(linear, left top, left bottom, from(#FFFFFF), to(#11DA33));
 background-image: -webkit-linear-gradient(top, #FFFFFF, #11DA33);
 background-image: -moz-linear-gradient(top, #FFFFFF, #11DA33);
 background-image: -ms-linear-gradient(top, #FFFFFF, #11DA33);
 background-image: -o-linear-gradient(top, #FFFFFF, #11DA33);
 background-image: linear-gradient(to bottom, #FFFFFF, #11DA33);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#FFFFFF, endColorstr=#11DA33);
 width: 150px;
 height: 50px;
 position:absolute;
 transition: .5s ease;
 top: 35%;
 left: 42%;
}
.button:hover {
 border:1px solid #cccccc;
 background-color: #FFFFFF; background-image: -webkit-gradient(linear, left top, left bottom, from(#FFFFFF), to(#0dab28));
 background-image: -webkit-linear-gradient(top, #FFFFFF, #0dab28);
 background-image: -moz-linear-gradient(top, #FFFFFF, #0dab28);
 background-image: -ms-linear-gradient(top, #FFFFFF, #0dab28);
 background-image: -o-linear-gradient(top, #FFFFFF, #0dab28);
 background-image: linear-gradient(to bottom, #FFFFFF, #0dab28);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#FFFFFF, endColorstr=#0dab28);
}
</style>
</head>
<body>
<div class = background-image>
	<img src = "C:\Users\anhbt\git\EfishentGreenWebApp\EFishGreenWeb\img\EFishGreenLogo.png" style="width:100%;"/>
	<form action="importFile.jsp" enctype="multipart/form-data" method="post">
		<p>
			Please specify a file, or a set of files:<br>
			<input type="file" name="datafile" size="40">
		</p>
		<div>
			<input type="submit" value="Upload File">
		</div>
	</form>
</div>
</body>
</html>