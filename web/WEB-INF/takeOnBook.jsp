
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="jspf/header.jspf" %>

            <h1 class="h2">Take on Book</h1>
            <hr>

            <form action="createTakeOnBook" method="POST">
                <div class="mb-3">
                  <label for="readerId" class="form-label">Reader</label>
                    <select id="readerId" name="readerId" class="form-select">
                        <c:forEach var="reader" items="${listReaders}">
                            <option value="${reader.id}">${reader.name} ${reader.lastname}</option>
                        </c:forEach>
                    </select>
                </div>
                    
                <div class="mb-3">
                  <label for="bookId" class="form-label">Book</label>
                    <select id="bookId" name="bookId" class="form-select">
                        <c:forEach var="book" items="${listBooks}">
                        <option value="${book.id}">
                            ${book.title}, 
                            <c:forEach var="author" items="${book.authors}">
                                ${author.name} ${author.lastName}
                            </c:forEach>
                        </option>
                        </c:forEach>
                    </select>
                </div>
                            
                    

                
            <button type="submit" class="btn btn-outline-info">Submit</button>
            <!--<input type="submit" value="?????? ?????">-->
        </form>
                                
                                
<%@include file="jspf/footer.jspf" %>
