
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>Create author</title>
    </head>
    <body>
        
        <div class="container">
            <h1 class="h1">Create author</h1>
            <a class="nav-link active h3" href="index.jsp">Home</a><hr>
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
        </div>
    </body>
</html>
