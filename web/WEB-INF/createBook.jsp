<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>

            <h1 class="h2">Create book</h1>
            <hr>

            <form action="createBook" method="POST">
                <div class="mb-3" >
                  <label for="title" class="form-label">Book Title</label>
                  <input type="text" class="form-control" id="title" name="title">
                  <!--<div id="emailHelp" class="form-text">Мы никогда никому не передадим вашу электронную почту.</div>-->
                </div>
                <div class="mb-3">
                  <label for="authors" class="form-label">Authors</label>
                    <select id="authors" name="authors" multiple="true"  class="form-select">
                        <c:forEach var="author" items="${listAuthors}">
                            <option value="${author.id}">${author.name} ${author.lastName}</option>
                        </c:forEach>
                    </select>
                </div>
                <button type="submit" class="btn btn-outline-info">Create</button>
            </form>
        </div>
<%@include file="jspf/footer.jspf" %>
