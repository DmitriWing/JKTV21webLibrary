<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>

        <h1 class="h2">Book turnover</h1>
        <hr>
        
        <ol class="list-group list-group-numbered">
            
            <c:forEach var="history" items="${listTakedBooks}">
                <li class="list-group-item d-flex justify-content-between align-items-start">
                  <div class="ms-2 me-auto">
                    <div class="fw-bold">${history.takeOnBook}</div>
                    <div class="fw-bold">${history.reader.name} ${history.reader.lastname},</div>
                    <div class="fw-bold">${history.book.title}</div>
                    
                        <c:forEach var="author" items="${history.book.authors}">
                            ${author.name} ${author.lastName}
                        </c:forEach>
                    </div>
                  <!--<span class="badge bg-primary rounded-pill">14</span>-->
                </li>
            </c:forEach>
                
        </ol>

<%@include file="jspf/footer.jspf" %>
