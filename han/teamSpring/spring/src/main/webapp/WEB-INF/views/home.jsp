<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<title>Home(index.html)</title> 

</head>
<body>
	<ul>
		<!-- 로그인 -> 회원약관 -> 회원가입으로 넘어가도록 -->
		<li><a href="${path1 }/member/login.do">로그인</a></li>
	
	</ul>
</body>
</html>
