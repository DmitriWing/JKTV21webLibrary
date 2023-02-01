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
        <div class="container">
            <h1 class="h1">Create book</h1>
            <a class="nav-link active h3" href="index.jsp">Home</a><hr>

            <form action="createBook" method="POST">
                <div class="mb-3" >
                  <label for="title" class="form-label">Book Title</label>
                  <input type="text" class="form-control" id="title" name="title">
                  <!--<div id="emailHelp" class="form-text">Мы никогда никому не передадим вашу электронную почту.</div>-->
                </div>
                <div class="mb-3">
                  <label for="authors" class="form-label">Aothor</label>
                    <select id="authors" name="authors" multiple="true"  class="form-select">
                        <c:forEach var="author" items="${listAuthors}">
                            <option value="${author.id}">${author.name} ${author.lastName}</option>
                        </c:forEach>
                    </select>
                </div>
                <button type="submit" class="btn btn-outline-info">Create</button>
            </form>
        </div>
    </body>
</html>
