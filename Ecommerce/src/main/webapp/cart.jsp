<html lang="en">
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
        integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
        integrity="sha512-PgQMlq+nqFLV4ylk1gwUOgm6CtIIXkKwaIHp/PAIWHzig/lKZSEGKEysh0TCVbHJXCLN7WetD8TFecIky75ZfQ=="
        crossorigin="anonymous" />

    <link rel="stylesheet" type="text/css" href="cart.css">

    
    <!-- FONT AWSOME LINK  -->
    <script src="https://kit.fontawesome.com/789c569d32.js" crossorigin="anonymous"></script>

    <title>Cart</title>
    
</head>

<body class="bg-light">

<!-- navbar start -->

<div class="navbg sticky-top bg-primary " >
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
                            <i class="fa-solid fa-house" style="color: #fff;"></i>
                    HOME </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="cart?email=<%=email%>">
                            <i class="fa-solid fa-cart-shopping fa-beat" style="color: #fff;"></i>
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
                
            </div>
        </div>
    </nav>
</div>

<!-- navbar end  -->

<!-- cart div start  -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10 col-11 mx-auto">
                <div class="row mt-5 gx-3">
                    <!-- left side div -->
                    <div class="col-md-12 col-lg-8 col-11 mx-auto main_cart mb-lg-0 mb-5 shadow">
                       <c:forEach items="${car}" var="pro">
                        <div class="card p-4">
                            <h2 class="py-4 font-weight-bold">Cart</h2>
                            <div class="row">
                                <!-- cart images div -->
                                <div
                                    class="col-md-5 col-11 mx-auto bg-light d-flex justify-content-center align-items-center shadow product_img">
                                    <img src="image/${pro.product.imageUrl}" class="img-fluid" alt="cart img">
                                </div>

                                <!-- cart product details -->
                                <div class="col-md-7 col-11 mx-auto px-4 mt-2">
                                    <div class="row">
                                        <!-- product name  -->
                                        <div class="col-6 card-title">
                                            <h1 class="mb-4 product_name">${pro.product.name}</h1>
                                            <p class="mb-2">${pro.product.name} - Multi-color</p>
                                            <p class="mb-2">COLOR: Multi-color</p>
                                            <p class="mb-3">SIZE: ${pro.product.size}</p>
                                        </div>
                                        <!-- quantity inc dec -->
                                        <div class="col-6">
                <ul class="pagination justify-content-end set_quantity">
                    <li class="page-item">
                        <button class="page-link" onclick="updateQuantity('textbox', 'itemval', -1)">
                            <i class="fas fa-minus"></i>
                        </button>
                    </li>
                    <li class="page-item">
                        <input type="text" name="" class="page-link" value="0" id="textbox">
                    </li>
                    <li class="page-item">
                        <button class="page-link" onclick="updateQuantity('textbox', 'itemval', 1, ${pro.product.price})">
                            <i class="fas fa-plus"></i>
                        </button>
                    </li>
                </ul>
            </div>
            </div>
                                    
                                    <!-- //remover move and price -->
                                    <div class="row">
                                        <div class="col-8 d-flex justify-content-between remove_wish">
                                            <p><a href="remove?id=${pro.id}"><i class="fas fa-trash-alt"></i> REMOVE ITEM</a></p>
                                            
                                        </div>
                                        <div class="col-4 d-flex justify-content-end price_money">
                                            <h3>$<span id="itemval">${pro.product.price }</span></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                </c:forEach>
                        <hr />
                        
                        
                        
</div>
                  
                        
 <!-- right side div -->
                    <div class="col-md-12 col-lg-4 col-11 mx-auto mt-lg-0 mt-md-5">
                        <div class="right_side p-3 shadow bg-white">
                            <h2 class="product_name mb-5">The Total Amount Of</h2>
                            <c:forEach items="${car}" var="pro">
                            <div class="price_indiv d-flex justify-content-between">
                                <p>Product amount ${pro.product.price}</p>
                                <p>$<span id="product_total_amt">${pro.product.price }</span></p>
                            </div>
                            <div class="price_indiv d-flex justify-content-between">
                                <p>Shipping Charge</p>
                                <p>$<span id="shipping_charge">50.0</span></p>
                            </div>
                            <hr />
                            <div class="total-amt d-flex justify-content-between font-weight-bold">
                                <p>The total amount of (including VAT)</p>
                                <p>$<span id="total_cart_amt">${pro.product.price + 50 }</span></p>
                            </div>
                            </c:forEach>
                            <button class="btn btn-primary text-uppercase">Checkout</button>
                        </div>
                        <!-- discount code part -->
                        <div class="discount_code mt-3 shadow">
                            <div class="card">
                                <div class="card-body">
                                    <a class="d-flex justify-content-between" data-toggle="collapse"
                                        href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                        Add a discount code (optional)
                                        <span><i class="fas fa-chevron-down pt-1"></i></span>
                                    </a>
                                    <div class="collapse" id="collapseExample">
                                        <div class="mt-3">
                                            <input type="text" name="" id="discount_code1"
                                                class="form-control font-weight-bold"
                                                placeholder="Enter the discount code">
                                            <small id="error_trw" class="text-dark mt-3">code is MS</small>
                                        </div>
                                        <button class="btn btn-primary btn-sm mt-3"
                                            onclick="discountCodeHandler()">Apply</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- discount code ends -->


                        <div class="mt-3 shadow p-3 bg-white">
                            <div class="pt-4">
                                <h5 class="mb-4">Expected delivery date</h5>
                                <p>July 27th 2020 - July 29th 2020</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- Popper.js first, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
        integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
        crossorigin="anonymous"></script>
        
        
        
        
       <script type="text/javascript">
        var product_total_amt = document.getElementById('product_total_amt');
        var shipping_charge = document.getElementById('shipping_charge');
        var total_cart_amt = document.getElementById('total_cart_amt');
        var discountCode = document.getElementById('discount_code1');

        const updateTotalAmount = () => {
            let productTotal = parseInt(product_total_amt.innerHTML);
            let shippingCharge = parseInt(shipping_charge.innerHTML);
            total_cart_amt.innerHTML = productTotal + shippingCharge;
        }
        

     /*    const updateQuantity = (incdec, itemprice, valueChange) => {
            var itemval = document.getElementById(incdec);
            var itempriceElem = document.getElementById(itemprice);

            itemval.value = Math.max(0, Math.min(5, parseInt(itemval.value) + valueChange));
            itempriceElem.innerHTML = parseInt(itempriceElem.innerHTML) + (15 * valueChange);
            product_total_amt.innerHTML = parseInt(product_total_amt.innerHTML) + (15 * valueChange);

            updateTotalAmount();
        } */
        
        const updateQuantity = (incdec, itemprice, valueChange, productAmount) => {
            var itemval = document.getElementById(incdec);
            var itempriceElem = document.getElementById(itemprice);

            itemval.value = Math.max(0, Math.min(5, parseInt(itemval.value) + valueChange));
            itempriceElem.innerHTML = parseInt(itempriceElem.innerHTML) + (productAmount * valueChange);
            product_total_amt.innerHTML = parseInt(product_total_amt.innerHTML) + (productAmount * valueChange);
	
            
            
            
            updateTotalAmount();
        }
        
        

        const discountCodeHandler = () => {
            if (discountCode.value === 'MS') {
                product_total_amt.innerHTML = parseInt(product_total_amt.innerHTML) - 15;
                updateTotalAmount();
                document.getElementById('error_trw').innerHTML = "Hurray! The code is valid";
            } else {
                document.getElementById('error_trw').innerHTML = "Try Again! Valid code is MS";
            }
        }
        
        
       
    </script>

    
</body>
<br><br>


<jsp:include page= "footer.jsp"/>


</html>





