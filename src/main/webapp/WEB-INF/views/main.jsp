<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<%
  request.setCharacterEncoding("UTF-8");
%>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/resources/js/kt.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <!-- <script>google.charts.load('current', {packages: ['corechart', 'line']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic(insert_data) {

      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Time of Day');
      data.addColumn('number', 'Rating');
      data.addColumn('string', 'style');
      data.addRows(insert_data);

      var options = {
        hAxis: {
          title: 'Time'
        },
        vAxis: {
          title: 'Popularity'
        }
      };

      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

      chart.draw(data, options);
    }
</script> -->
    <script>
    google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart(insert_data) {
        var data = google.visualization.arrayToDataTable(insert_data);

        var options = {
          legend: 'none',
          hAxis: { minValue: 0, maxValue: 9 },
          curveType: 'function',
          pointSize: 0.1,
          dataOpacity: 0.3
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
    }
    </script>
</head>
<body>
<!-- <button onclick="choose_data()">누르지마세요</button><br>
 -->
<div id="chart_div" style="width: 1700px; height: 500px;"></div>
</body>
</html>