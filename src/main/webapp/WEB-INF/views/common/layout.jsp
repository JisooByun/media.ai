<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"
 %>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <style>
      .main{
      	margin: 0px;
      }
      #container {
        width: 100%;
        margin: 0px auto;
        border: 0px solid #bcbcbc;
      }
      #header {
      	width : 90%;
      	height: 50px;
        border-bottom: 1px solid #bcbcbc;
    	float : left;
      
      }
      #sidebar-left {
        width: 10%;
        height: 1080px;
        float: left;
        border: 0px solid #bcbcbc;
        font-size:10px;
        background-color: #43425d;   
        text-align:left;
        
      }
      #content {
        width: 75%;
        padding: 5px;
        margin-right: 5px;
        float: left;
        border: 0px solid #bcbcbc;
        text-align:center;
      }
      #footer {
        clear: both;
        padding: 5px;
        border: 0px solid #bcbcbc;
      }
      
    </style>
    <title><tiles:insertAttribute name="title" /></title>
  </head>
    <body class="main">
    <div id="container">
      <div id="sidebar-left">
          <tiles:insertAttribute name="side"/> 
      </div>
      <div id="header">
         <tiles:insertAttribute name="header"/>
      </div>
      <div id="content">
          <tiles:insertAttribute name="body"/>
      </div>
      <div id="footer">
          <tiles:insertAttribute name="footer"/>
      </div>
    </div>
  </body>
</html>