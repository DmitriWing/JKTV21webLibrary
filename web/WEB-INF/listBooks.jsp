<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>Book List</title>
    </head>
    <body>
        <div class="container">
        <h1 class="h1">All our books</h1>
        <a class="nav-link active h3" href="index.jsp">Home</a><hr>
        
        <ol class="list-group list-group-numbered">
            
            <c:forEach var="book" items="${listBooks}">
                <li class="list-group-item d-flex justify-content-between align-items-start">
                  <div class="ms-2 me-auto">
                    <div class="fw-bold">${book.title}</div>
                        <c:forEach var="author" items="${book.authors}">
                            ${author.name} ${author.lastName}
                        </c:forEach>
                    </div>
                  <!--<span class="badge bg-primary rounded-pill">14</span>-->
                </li>
            </c:forEach>
            
<!--           ------------------------------------------------------------------------------
            <li class="list-group-item d-flex justify-content-between align-items-start">
              <div class="ms-2 me-auto">
                <div class="fw-bold">Подзаголовок</div>
                Контент для элемента списка
              </div>
              <span class="badge bg-primary rounded-pill">14</span>
            </li>
            -------------------------------------------------------------------------------->
        </ol>
        </div><!-- container --> 
    </body>
</html>
