
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="jspf/header.jspf" %>

<h1 class="h2">Return Book</h1>
<em><small class="text-muted">Check book and submit</small></em>
<hr>
<form action="createReturnBook" method="POST">
    
    <div class="row mb-3">
        <div class="col-12">
    <c:forEach var="history" items="${listTakedBooks}">
        <input type="radio" name="book" id="book[${history.id}]" value="${history.id}" />
        <label for="book[${history.id}]">
            <div class="card" style="width: 18rem;">
                <!--<img src="..." class="card-img-top" alt="...">-->
                <div class="card-body">
                    <h5 class="card-title">${history.book.title}</h5>
                    <p class="card-text">Reader: ${history.reader.name} ${history.reader.lastname}</p>
                    <p class="card-text">Taken on: 
                        <fmt:formatDate value="${history.takeOnBook}" pattern="dd/MM/yy HH:mm" />
                    </p>
                  <!--<a href="#" class="btn btn-primary stretched-link">Return</a>-->
                </div>
              </div>
        </label>
    </c:forEach>
        </div>
    </div>
    
    <div class="row">
        <div class="col-12">
            <button type="submit" class="btn btn-outline-info">Submit</button>
        </div>
    </div>

    
</form>
                                
                                
<%@include file="jspf/footer.jspf" %>

