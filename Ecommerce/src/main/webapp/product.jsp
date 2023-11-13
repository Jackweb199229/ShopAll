<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ShopAll</title>
    <link rel="stylesheet" href="styles.css">

    
    <!-- FONT AWSOME LINK  -->
    <script src="https://kit.fontawesome.com/789c569d32.js" crossorigin="anonymous"></script>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


</head>

<body>

    <body>

    <div class="navbg sticky-top " >
        <nav class="navbar navbar-expand-lg bg-body-tertiary" id="navbg">
            <div class="container-fluid">
                <a class="navbar-brand" id="logo" href="home">ShopAll</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">


                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 " id="navright">
                        <li class="nav-item">
                        <% String email=(String) session.getAttribute("eid");
                        if(email!=null)
                        {
                        	%>
                        	<a class="nav-link active" aria-current="page" href="logout">
                                <i class="fa-solid fa-user" style="color: #276add;"></i>
                                Logout</a>
                            <%
                        }
                        else
                        {
                       %>
                        	<a class="nav-link active" aria-current="page" href="login">
                            <i class="fa-solid fa-user" style="color: #276add;"></i>
                            Login</a>
                            
                        
                        <% }%>
                        
                            
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="home">
                                <i class="fa-solid fa-house" style="color: #1b5dd0;"></i>
                        HOME </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="cart?email=<%=email%>">
                                <i class="fa-solid fa-cart-shopping fa-beat" style="color: #296adb;"></i>
                                CART</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="product">OUR PRODUCTS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about">ABOUT US</a>
                        </li>
                        
                         <li class="nav-item">
                            <a class="nav-link" href="addproduct">Add Product</a>
                        </li>


                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2 " type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-primary" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </div>

  
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
    <script src="./ecommerce.js"></script>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    
 

<!-- Product List -->
<div class="section2"  >
    <!-- Loop through the products -->
    
        <div class="container">
    <c:forEach items="${obj}" var="prod">
            <div class="items">
                <div class="img img1">
                    <a href="singlepage?id=${prod.id}">
                        <img src="image/${prod.imageUrl}" alt="">
                    </a>
                </div>
                <div class="name"> ${prod.name}</div>
                <div class="price">Price : ${prod.price}</div>
                <div class="price">Size : ${prod.size}</div>
                <div class="info ">
                <a href="addcart?id=${prod.id}&email=<%=email%>"> 
                <button>Add to cart </button>
                </a>
                 &nbsp;
                
                <a href="singlepage?id=${prod.id}">
                <button>  Read more </button>
                </a>
                
                </div>
            </div>
    </c:forEach>
        </div>
</div>

<!-- Include your footer -->
<jsp:include page="footer.jsp"/>
