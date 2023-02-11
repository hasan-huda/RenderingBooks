<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>New Book</title>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>New Book</h1>
            </div>
            <div class="card-body">
            	<form:form action="/books" method="post" modelAttribute="book">
    <p>
        <form:label path="title" class="form-label">Title</form:label>
        <form:errors path="title"/>
        <form:input path="title" class="form-control form-control"/>
    </p>
    <p>
        <form:label path="description">Description</form:label>
        <form:errors path="description"/>
        <form:textarea path="description" class="form-control form-control"/>
    </p>
    <p>
        <form:label path="language">Language</form:label>
        <form:errors path="language"/>
        <form:input path="language" class="form-control form-control"/>
    </p>
    <p>
        <form:label path="numberOfPages">Pages</form:label>
        <form:errors path="numberOfPages"/>     
        <form:input type="number" path="numberOfPages" class="form-control form-control"/>
    </p>    
    <div class="d-flex justify-content-end">
        <button type="submit" class="btn btn-primary">
            Submit
        </button>
    </div>
</form:form>
            </div>
        </div>
    </div>
</body>
</html>