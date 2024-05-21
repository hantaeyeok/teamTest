<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Insert Answer</title>
</head>
<body>
    <h2>Insert Answer</h2>
    <form action="${path}/qna/insertQna.do" method="post">
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
        <!-- 숨겨진 필드로 부모 질문 번호와 계층 레벨 설정 자동화와 사용자가 사용하지 않아도 되기 때문에.-->
        <input type="hidden" name="parno" value="${param.parno}">
        <input type="hidden" name="plevel" value="${param.plevel}">
        <input type="hidden" name="visited" value="0">
        <div>
            <button type="submit">Submit</button>
        </div>
    </form>
</body>
</html>
</html>