<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> -->

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link rel="stylesheet" href="styles.css">

    
    <!-- FONT AWSOME LINK  -->
    <script src="https://kit.fontawesome.com/789c569d32.js" crossorigin="anonymous"></script>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


</head>

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
                        <%String email=(String) session.getAttribute("eid");
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
                            <a class="nav-link" href="addproduct">ADD PRODUCT</a>
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
   

    <section>
        <div class="section">
            <div class="section1">
                <div class="img-slider">
                    <img src="https://images.unsplash.com/photo-1516478177764-9fe5bd7e9717?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=400&ixid=MnwxfDB8MXxyYW5kb218MHx8c2hvZXN8fHx8fHwxNjk3OTc3NTI0&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=600"
                        alt="" class="img">
                    <img src="https://images.pexels.com/photos/3962294/pexels-photo-3962294.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                        alt="" class="img">
                    <img src="https://images.pexels.com/photos/2292953/pexels-photo-2292953.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
                        alt="" class="img">
                    <img src="https://images.pexels.com/photos/1229861/pexels-photo-1229861.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                        alt="" class="img">
                    <img src="https://images.unsplash.com/photo-1518894781321-630e638d0742?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=400&ixid=MnwxfDB8MXxyYW5kb218MHx8c2hvZXN8fHx8fHwxNjk3OTc3NDY3&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=600"
                        alt="" class="img">
                </div>

            </div>


            <div class="section2">
                <div class="container">
                <c:forEach items="${obj}" var="prod" varStatus="loop">
                <c:if test="${loop.index < 4}">
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
                    
                </c:if>
                </c:forEach>
                
                
            </div>
                </div>
                <br>
                <br>
                 <!-- "Show More" link to redirect to products.jsp -->
                <div class="section3">
                <div class="container-fluid text-center">
                    <a href="product">Show More</a>
                </div>
                </div>
                
                <br>
                <br>
                
        </div>

    </section>


<%-- <jsp:include page= "footer.jsp"/> --%>
<jsp:include page= "footer.jsp"/>
