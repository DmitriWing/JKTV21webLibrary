<%-- 
    Document   : createAuthor
    Created on : Jan 30, 2023, 10:10:14 AM
    Author     : pupil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>Create author</title>
    </head>
    <body>
        <h1 class="h1">Create author</h1>
        <form action="createAuthor" method="POST">
            <div class="form-line m-2">
                <label for="name">Name</label>
                <input id="name" name="name" type="text"></input>
            </div>
            <div class="form-line m-2">
                <label for="lastname">Lastname</label>
                <input id="lastname" name="lastname" type="text"></input>
            </div>
            <div class="form-line m-2">
                <input type="submit" value="Create">
            </div>
        </form>
    </body>
</html>
