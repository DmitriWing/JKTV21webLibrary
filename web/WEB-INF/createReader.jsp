
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jspf/header.jspf" %>
            <h1 class="h2">Create reader</h1>
            <hr>

            <form action="createReader" method="POST">
                <div class="mb-3" >
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name" name="name">
                </div>
                <div class="mb-3">
                    <label for="lastname" class="form-label">Lastname</label>
                    <input type="text" class="form-control" id="lastname" name="lastname">
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone</label>
                    <input type="number" class="form-control" id="phone" name="phone">
                </div>
                <button type="submit" class="btn btn-outline-info">Create</button>
            </form>
        </div>
<%@include file="jspf/footer.jspf" %>
