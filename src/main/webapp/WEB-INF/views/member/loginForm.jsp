<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="result" value="${param.result }" />
<%
   request.setCharacterEncoding("UTF-8");
%>     
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
	<title>로그인창</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/login_style.css">
<c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script>
	    window.onload=function(){
	      alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
	    }
	  </script>
	</c:when>
</c:choose>  
</head>

<body>
  <div class="wrap">  
  		<div class ="login-logo" >           	
  			<img src="${contextPath}/resources/image/ai.png" width="500" height="500" id="loginlogo" >
  		</div>
            <div class="form-wrap" style="z-index:1 ">
            
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                </div>
          
                <form id="login" action="logincheck.do" class="input-group" method="post">
                    <input type="text" name="id" class="input-field" placeholder="User name or Email" required>
                    <input type="password" name="pwd" class="input-field" placeholder="Enter Password" required>
                    <button class="submit">Login</button>
                </form>
                
            </div>
        </div>
</body>
</html>
