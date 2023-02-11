<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Read Share</title>
</head>
<body>
	<div class="container">
        <div class="card">
            <div class="card-header">
                <h1>All Books</h1>
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Language</th>
                            <th>Number Of Pages</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items ="${books}">
                            <tr>
                                <td><c:out value="${book.id}"/></td>
                                <td><c:out value="${book.title}"/></td>
                                <td><c:out value="${book.language}"/></td>
                                <td><c:out value="${book.numberOfPages}"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>