<jsp:include page= "header.jsp"/>

 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ShopAll</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="login.css">

    
    <!-- FONT AWSOME LINK  -->
    <script src="https://kit.fontawesome.com/789c569d32.js" crossorigin="anonymous"></script>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


</head>

<body>


<div id="loginpage">
    <div class="container mx-auto" id="container">
        <div class="form-container f-container sign-up">
            <form action="registeration" method="post">
                <h1>Create Account</h1>
                <div class="social-icons">
                    <a href="https://google.com/" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="https://www.facebook.com/" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="https://github.com/" class="icon"><i class="fa-brands fa-github"></i></a>
                    <a href="https://linkedin.com/" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>or use your email for Registration</span>
                <input type="text" placeholder="Name" name="name">
                <input type="email" placeholder="Email" name="email">
                <input type="password" placeholder="Password" name="password">
                <button type="submit">Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in f-container">
            <form action="log" method="post">
                <h1>Sign In</h1>
                <div class="social-icons">
                    <a href="https://google.com/" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="https://www.facebook.com/" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="https://github.com/" class="icon"><i class="fa-brands fa-github"></i></a>
                    <a href="https://linkedin.com/" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>or use your email password</span>
                <input type="email" placeholder="Email" name="email">
                <input type="password" placeholder="Password" name="password">
                <a href="#">Forget Your Password?</a>
                <button type="submit">Sign In</button>
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Welcome Back!</h1>
                    <p>Enter your personal details to use all of site features</p>
                    <button class="hidden" id="login">Sign In</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Welcome, Friend!</h1>
                    <p>Enter your personal details to use all of site features</p>
                    <button class="hidden" id="register">Sign Up</button>
                </div>
            </div>
        </div>
    </div>

</div>

    <script>
    const container = document.getElementById('container');
    const registerBtn = document.getElementById('register');
    const loginBtn = document.getElementById('login');

    registerBtn.addEventListener('click', () => {
        container.classList.add("active");
    });

    loginBtn.addEventListener('click', () => {
        container.classList.remove("active");
    });
    </script>
    
    
    
 <jsp:include page= "footer.jsp"/>
</body>

</html>