<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Insert Question</title>
</head>
<body>
    <h2>Insert Question</h2>
    <form action="${path}/qna/insQuestion.do" method="post">
        <div>
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>
        </div>
        <div>
            <label for="content">Content:</label>
            <textarea id="content" name="content" required></textarea>
        </div>
        <div>
            <label for="aid">Author ID:</label>
            <input type="text" id="aid" name="aid" required>
        </div>
        <!-- 숨겨진 필드로 기본 질문 설정 -->
        <input type="hidden" name="parno" value="0">
        <input type="hidden" name="plevel" value="1">
        <input type="hidden" name="visited" value="0">
        <div>
            <button type="submit">Submit</button>
        </div>
    </form>
</body>
</html>