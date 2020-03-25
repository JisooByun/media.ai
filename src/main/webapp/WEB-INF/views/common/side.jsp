<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>

<html>
<head>
 <script src="${pageContext.request.contextPath}/resources/js/kt.js"></script>
 <style>
   .menu_print{
      padding-top:7px;
      padding-left:10px;  
      color:#ffffff;
      text-decoration:none;
      position:absolute;
   }
   
	.BG {
	  width: 100%;
	  height: 50px;
	  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.05);
	  background-color: rgba(0, 0, 0, 0.1);
	}
	.logo {
   	  text-decoration:none;
  	  padding-top : 15px;
   	  padding-left: 20px;
	  font-family: SourceSansPro;
	  font-size: 15px;
	  font-weight: bold;
	  font-stretch: normal;
	  font-style: normal;
	  line-height: 1.4;
	  letter-spacing: 3px;
	  color: #ffffff;
	  position:absolute;
	}
	.sidebar{
		margin-block-start : 0em;
	}
 </style>
  <meta charset="UTF-8">
  <title>사이드 메뉴</title>
</head>
<body>
	<h1 class = "sidebar">
		<div class ="BG"><a href="#" class="logo">MEDIA.AI</a></div>
		<a href="#"  class="menu_print" id="dashboard_font" onclick="choose_data()">Dashboard</a><br>
	    <a href="#"  class="menu_print" id="event_font">Event</a><br>
	    <a href="#"  class="menu_print" id="setting_font">Setting</a><br>
    </h1>
	<%-- 
	<h1>
		<a href="${contextPath}/member/listMembers.do"  class="no-underline">회원관리</a><br>
		<a href="${contextPath}/board/listArticles.do"  class="no-underline">게시판관리</a><br>
		<a href="#"  class="no-underline">상품관리</a><br>
	</h1>
	 --%>
</body>
</html>