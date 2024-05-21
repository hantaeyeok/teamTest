<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Update QnA</title>
</head>
<body>
    <h2>Update QnA</h2>
    <form action="${path}/qna/upQna.do" method="post">  
        <input type="hidden" name="no" value="${qna.no}">
        <div>
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" value="${qna.title}" required>
        </div>
        <div>
            <label for="content">Content:</label>
            <textarea id="content" name="content" required>${qna.content}</textarea>
        </div>
        <div>
            <label for="aid">Author ID:</label>
            <input type="text" id="aid" name="aid" value="${qna.aid}" required>
        </div>
        <!-- 숨겨놓음. 사용자가 사용할 내용이 아님 관리자 관리자가 할꺼 스크립트 구현 해야함. -->
        <input type="hidden" name="parno" value="${qna.parno}">
        <input type="hidden" name="plevel" value="${qna.plevel}">
        <input type="hidden" name="visited" value="${qna.visited}">
        <div>
            <button type="submit">Submit</button>
        </div>
    </form>
    <a href="path"></a>
</body>
</html>