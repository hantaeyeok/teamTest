<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Notice Details</title>
</head>
<body>
    <h2>Notice Details</h2>
    <table border="1">
        <tr>
            <th>Bno</th>
            <td>${notice.bno}</td>
        </tr>
        <tr>
            <th>Title</th>
            <td>${notice.title}</td>
        </tr>
        <tr>
            <th>Content</th>
            <td>${notice.content}</td>
        </tr>
        <tr>
            <th>Author</th>
            <td>${notice.author}</td>
        </tr>
        <tr>
            <th>View Count</th>
            <td>${notice.visited}</td>
        </tr>
        <tr>
            <th>Resdate</th>
            <td>${notice.resdate}</td>
        </tr>
    </table>
    <a href="${path}/notice/editNotice.do?bno=${notice.bno}">Edit</a>
    <a href="${path}/notice/deleteNotice.do?bno=${notice.bno}">Delete</a>
    <a href="${path}/notice/noticeList.do">Back to List</a>
</body>
</html>