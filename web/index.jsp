<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>JKTV21 Web Library</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

        
        
    </head>
    <body>
        <div class="container">
            <div class="row">
                <nav class="navbar navbar-expand-lg bg-light">
                    <div class="container-fluid">
                      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Переключатель навигации">
                        <span class="navbar-toggler-icon"></span>
                      </button>
                      <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                          
                          <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                              Create
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <li><a class="dropdown-item" href="newAuthor">Author</a></li>
                              <li><a class="dropdown-item" href="newBook">Book</a></li>
                              <li><a class="dropdown-item" href="newReader">Reader</a></li>
                            </ul>
                          </li>
                          
                          <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                              Lists
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <li><a class="dropdown-item" href="#">History</a></li>
                              <li><a class="dropdown-item" href="listBooks">Book</a></li>
                              <li><a class="dropdown-item" href="listReaders">Reader</a></li>
                            </ul>
                          </li>
                          
                        </ul>
                        <h1 class="text-info text-center">Welcome to the Library </h1>
                      </div>
                    </div>
                  </nav>
            </div>
            
<!--            <nav class="nav row d-flex justify-content-around">
                <a href="newBook" class="btn btn-success m-2 col-3">Create new book</a>
                <a href="newAuthor" class="btn btn-success m-2 col-3">Create new author</a>
                <a href="listBooks" class="btn btn-success m-2 col-3">Books list</a>
                <a href="newReader" class="btn btn-success m-2 col-3">Create reader</a>
                <a href="listReaders" class="btn btn-success m-2 col-3">Readers list</a>
                <a href="takeOnBook" class="btn btn-success m-2 col-3">Take Book</a>
            </nav>-->
            
            <div class="row">
                <div class="text-center col-12 text-primary"> ${info} </div>
            </div>
        
        </div>  <!-- container-->
    </body>
</html>