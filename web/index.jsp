<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>JKTV21 Web Library</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        
        
    </head>
    <body>
        <div class="container">
            
            <div class="row">
                <div class="col-12 shadow rounded p-3 mt-3">
                    <h1 class="text-primary text-center">Welcome to the Library </h1>
                </div>
            
            <nav class="nav row d-flex justify-content-around">
                <a href="newBook" class="btn btn-success m-2 col-3">Create new book</a>
                <a href="newAuthor" class="btn btn-success m-2 col-3">Create new author</a>
                <a href="listBooks" class="btn btn-success m-2 col-3">Books list</a>
            </nav>
            
            <div class="row">
                <div class="text-center col-12 text-primary"> ${info} </div>
            </div>
        
        </div>  <!-- container-->
    </body>
</html>