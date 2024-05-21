<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Qna List</title>
</head>
<body>
    <h2>Qna List</h2>
    <table border="1">
       <tr>
            <th>No</th>
            <th>Title</th>
            <th>Content</th>
            <th>Date</th>
            <th>Visited</th>
            <th>Author</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="qna" items="${qnaList}">
            <tr>
                <td>${qna.no}</td>
                <td>
                    <c:forEach var="i" begin="1" end="${qna.plevel}">
                        <span class="indent"></span>
                    </c:forEach>
                    <a href="${path}/qna/getQna.do?no=${qna.no}">${qna.title}</a>
                </td>
                <td>${qna.content}</td>
                <td>${qna.resdate}</td>
                <td>${qna.visited}</td>
                <td>${qna.aid}</td>
                <td>
                    <a href="${path}/qna/upQna.do?no=${qna.no}">Edit</a>
                    <a href="${path}/qna/delQna.do?no=${qna.no}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="${path}/qna/insQuestion.do">Insert Qna</a>
    <a href="${path}/">home</a>
</body>
</html>