<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>

        <h1 class="h2">Book turnover</h1>
        <hr>
        
        <ol class="list-group list-group-numbered">
            
            <c:forEach var="history" items="${listTakedBooks}">
                <li class="list-group-item d-flex justify-content-between align-items-start
                    <c:if test="${empty history.returnBook}" >
                        bg-light
                    </c:if>
                    ">
                  <div class="ms-2 me-auto">
                      <table class="table table-borderless">
                        <thead>
                        </thead>
                        <tbody class="table-group-divider">
                          <tr>
                            <th scope="row">Taken on</th>
                            <td><fmt:formatDate value="${history.takeOnBook}" pattern="dd/MM/yy HH:mm" /></td>
                          </tr>
                          <tr>
                            <th scope="row">Returned</th>
                            <td>
                                <c:if test="${empty history.returnBook}" >
                                    In hand
                                </c:if>
                                <c:if test="${not empty history.returnBook}" >
                                    <fmt:formatDate value="${history.returnBook}" pattern="dd/MM/yy HH:mm" />
                                </c:if>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">Reader</th>
                            <td>${history.reader.name} ${history.reader.lastname}</td>
                          </tr>
                          <tr>
                            <th scope="row">Book</th>
                            <td>
                                ${history.book.title}, 
                                <c:forEach var="author" items="${history.book.authors}">
                                    ${author.name} ${author.lastName}
                                </c:forEach>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                </li>
            </c:forEach>
                
        </ol>

<%@include file="jspf/footer.jspf" %>
