<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>

        <h1 class="h2">Our Readers</h1>
        <hr>
        
        <ol class="list-group list-group-numbered">
            
            <c:forEach var="reader" items="${listReaders}">
                <li class="list-group-item d-flex justify-content-between align-items-start">
                    <div class="ms-2 me-auto">
                        <div class="fw-bold">${reader.name} ${reader.lastname}</div>
                            phone: ${reader.phone}
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
