<%-- 
    Document   : createAuthor
    Created on : Jan 30, 2023, 10:10:14 AM
    Author     : pupil
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>Create Book</title>
    </head>
    <body>
        <h1 class="h1">Create book</h1>
        <form action="createBook" method="POST">
            <div class="form-line m-2">
                <label for="title">Title</label>
                <input id="title" name="title" type="text"></input>
            </div>
            <div class="form-line m-2">
                <label for="authors">Authors</label>
                <select id="authors" name="authors" multiple="true">
                    <c:forEach var="author" items="${listAuthors}">
                        <option value="${author.id}">${author.name} ${author.lastName}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-line m-2">
                <input type="submit" value="Create">
            </div>
        </form>
    </body>
</html>
