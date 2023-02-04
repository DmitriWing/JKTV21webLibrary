<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>
<div class="row">
    <div class="col-lg-3 col-md-4 col-sm-5">
        <h1 class="h2">Our books</h1>
    </div>
    
    <div class="col-lg-9 col-md-8 col-sm-7">
        <a class="btn btn-outline-info" href="newBook">Create New</a>
    </div>
    <hr>
</div>
        
        
        <ol class="list-group list-group-numbered">
            
            <c:forEach var="book" items="${listBooks}">
                <li class="list-group-item d-flex justify-content-between align-items-start">
                  <div class="ms-2 me-auto">
                    <div class="fw-bold">${book.title}</div>
                        <c:forEach var="author" items="${book.authors}" varStatus="status">
                            ${author.name} ${author.lastName}
                            <c:if test="${!status.last}" >, </c:if>
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
