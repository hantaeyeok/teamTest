<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Qna 상세보기 get</title>
</head>
<body>
    <h2>QnA Details</h2>
    <div>
        <label>No:</label> ${qna.no}
    </div>
    <div>
        <label>Title:</label> ${qna.title}
    </div>
    <div>
        <label>Content:</label> ${qna.content}
    </div>
    <div>
        <label>Author ID:</label> ${qna.aid}
    </div>
    <div>
        <label>Visited:</label> ${qna.visited}
    </div>
    <div>
        <label>Date:</label><fmt:formatDate value="${qna.resdate}" pattern="yyyy-MM-dd HH:mm:ss" />
 		
    </div>
    <a href="${path}/qna/upQna.do?no=${qna.no}">Edit</a>
    <a href="${path}/qna/delQna.do?no=${qna.no}">Delete</a>
    <a href="${path}/qna/qnalist.do">Back to List</a>
</body>
</html>