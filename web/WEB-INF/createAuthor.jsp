
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>
        
            <h3 class="h2">Create author</h3>
            <hr>
            <form action="createAuthor" method="POST">
                <div class="mb-3" >
                    <label for="name" class="form-label">Author name</label>
                    <input type="text" class="form-control" id="name" name="name">
                </div>
                <div class="mb-3">
                    <label for="lastname" class="form-label">Auhor lastname</label>
                    <input type="text" class="form-control" id="lastname" name="lastname">
                </div>
                <button type="submit" class="btn btn-outline-info">Create</button>
            </form>
            
<%@include file="jspf/footer.jspf" %>
