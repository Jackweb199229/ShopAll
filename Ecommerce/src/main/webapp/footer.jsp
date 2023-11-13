<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Footer</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
	
	
    <footer>
        <div class="footer0">
            <h1>ShopAll</h1>
        </div>
        <div class="footer1 ">
            Connect with us at<div class="social-media">
                <a href="https://www.linkedin.com/in/noman-quamar-99161a19b/">
                    <ion-icon name="logo-linkedin"></ion-icon>
                </a>
                <a href="https://www.linkedin.com/in/md-jafar-9a891720b">
                    <ion-icon name="logo-linkedin"></ion-icon>
                </a>
                <a href="https://www.instagram.com/noman.quamar.3/">
                    <ion-icon name="logo-instagram"></ion-icon>
                </a>
                <a href="#">
                    <ion-icon name="logo-instagram"></ion-icon>
                </a>

            </div>
        </div>
        
        
       <div class="footer2">
            
            
            <div class="Get Help">
                <div class="heading">Get Help</div>
                <div class="div">Help Center</div>
                <div class="div">Terms & Condition</div>
                <div class="div">
                
                 <%String email=(String) session.getAttribute("eid");
                        if(email!=null)
                        {
                        	%>
                        	<a class="nav-link active" aria-current="page" href="logout">
                                Logout</a>
                            <%
                        }
                        else
                        {
                        	%>
                        	<a class="nav-link active" aria-current="page" href="login">
                            Login</a>
                            
                        
                        <% }%>
                
				</div>
            </div>
            <div class="services">
                <div class="heading">Services</div>
                <div class="div">Return</div>
                <div class="div">Cash Back</div>
            </div>
            
            <div class="product">
                <div class="heading">Products</div>
                <div class="div"><a href="product">Our Products</a></div>
                <div class="div"><a href="cart?email=<%=email%>">Cart</a></div>

            </div>
        </div>
        <div class="footer3">Copyright &copy; made by &nbsp; MD NOMAN QUAMAR & MD JAFAR </div>
    </footer>



    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
    <script src="./ecommerce.js"></script>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
	
</body>
</html>
