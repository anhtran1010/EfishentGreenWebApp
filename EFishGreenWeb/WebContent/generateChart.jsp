<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.LinkedHashMap,controller.*, java.io.*, java.util.Set" %>
<%
User usr = (User)session.getAttribute("user");
LinkedHashMap<String, String[]> data = new LinkedHashMap<>();
File file = new File("C:\\apache-tomcat-9.0.19\\apache-tomcat-9.0.19\\webapps\\data\\yourFileName");
parseFile parser = new parseFile(data, file);
Set<String> keys = data.keySet();
%>
<!DOCTYPE html>
 <html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
          var data = new google.visualization.DataTable();
          data.addColumn('number', 'Day');
          data.addColumn('number', 'Water Level');
          data.addColumn('number', 'Water Temperature');
          data.addColumn('number', 'pH Level');
          data.addColumn('number', 'Nitrate Level');
          data.addColumn('number', 'Oxygen Level');
          data.addColumn('number', 'Ammonia Level');
          data.addColumn('number', 'Light Intensity');
          data.addColumn('number', 'Air Temperature');
          
          data.addRows([
        		  [12 ,8, 83,6.9,24 ,7 ,0.024,1,80],
        		  [13 ,2,83,6.9,24 ,7 ,0.024,1,80],
        		  [14 ,5, 83,6.9,24 ,7 ,0.024,1,80],
        		  [15,6, 83,6.9,24 ,7 ,0.024,1,80],
        		  [16 ,9, 83,6.9,24 ,7 ,0.024,1,80],
        		  [17 ,8,83,6.9,24 ,7 ,0.024,1,80],
        		  [18,10, 83,6.9,24 ,7 ,0.024,1,80],
        		  [19,11,83,6.9,24 ,7 ,0.024,1,80]
        		  ]);

          var options = {
                  title: 'Control Variables',
                  curveType: 'function',
                  legend: { position: 'bottom' }
                };

                var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

                chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="curve_chart" style="width: 900px; height: 500px"></div>
  </body>
</html>