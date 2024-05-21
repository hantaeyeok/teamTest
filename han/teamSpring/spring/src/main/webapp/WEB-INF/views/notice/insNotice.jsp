<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Insert Notice</title>
    <style>
        #vs { clear: both; width: 1930px; height: 600px; overflow: hidden; position: relative; margin: 0 auto; }
        #vs img { display: block; width: 100%; height: 100%; position: absolute; z-index: 0; }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %> 
    <figure id="vs">
        <img class="backimg" src="${path}/resources/img/back01.jpg" alt="배경이미지">
    </figure>
    <h2>Insert Notice</h2>
    <form action="${path}/notice/insertproNotice.do" method="post">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br>
        <label for="content">Content:</label>
        <textarea id="content" name="content" required></textarea><br>
        <label for="author">Author:</label>
        <input type="text" id="author" name="author" required><br>
        <input type="hidden" name="visited" value="0">
        <input type="hidden" name="resdate" id="resdate">
        <button type="submit">Submit</button>
    </form>
<%@ include file="/WEB-INF/views/footer.jsp" %>   
<script>
    document.getElementById('resdate').value = new Date().toISOString().slice(0, 10); // YYYY-MM-DD 형식으로 설정
</script>
</body>
</html>