<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>

        <h1 class="h2">All our books</h1>
        <hr>
        
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

<%@include file="jspf/footer.jspf" %>
