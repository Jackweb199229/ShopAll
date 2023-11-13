<jsp:include page= "header.jsp"/>

<body>
<div class="container" id="singleBox">
        <div class="card m-3 w-75 mx-auto" id="card">
            <div class="row g-0">
                <div class="col-md-5">
                    <img src="https://images.unsplash.com/photo-1584735174914-6b1272458e3e?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=400&ixid=MnwxfDB8MXxyYW5kb218MHx8c2hvZXN8fHx8fHwxNjk3OTc3MjY3&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=600"
                        class="img-fluid rounded-start" id="detailImg" alt="...">
                </div>

                <div class="col-md-7">
                    <div class="card-body">
                        <h5 class="card-title"> <strong> Nike Shoes </strong> </h5>

                        <p class="card-text">Revolution 6 Running Shoes For Men </p>
                        <p class="card-text">Color : <strong> Multi-color </strong> </p>
                        <div class="box">
                            <p class="card-text">Size : </p>
                            <div class="size1 size">7</div>
                            <div class="size2 size">8</div>
                            <div class="size3 size">9</div>
                            <div class="size3 size">10</div>
                            <div class="size3 size">12</div>
                        </div>
                        <div>
                            <p id="paratext"> </p>
                        </div>
                        <div class="box">
                            <p class="card-circle">Color : </p>
                            <div class="circle1 circle"></div>
                            <div class="circle2 circle"></div>
                            <div class="circle3 circle"></div>
                        </div>
                        <div>
                            <p id="colortext"> </p>
                        </div>

                        <div class="price">
                            <p>price <span class="rate">1200 &#x20b9;</span> 899 &#x20b9; </p>
                        </div>

                    </div>      
                </div>
            </div>
        </div>
    </div>

<br><br>

    

<script>
    let colortext = document.getElementById("colortext")
    let circle1 = document.querySelector(".circle1");
    let circle2 = document.querySelector(".circle2");
    let circle3 = document.querySelector(".circle3");

    circle1.addEventListener("click", function(e){
        colortext.innerHTML = "Selected color: Red";
    });
    circle2.addEventListener("click", function(e){
        colortext.innerHTML = "Selected color: blue";
    });
    circle3.addEventListener("click", function(e){
        colortext.innerHTML = "Selected color: white";
    });

    // for(let i=0; i<circle.length; i++){
    //     circle[i].addEventListener("click", function(e){
    //         console.log(circle[i]);
            
    //     });
    // }

    let paratext = document.getElementById("paratext");
    let size = document.querySelectorAll(".size");
    for(let i=0; i<size.length; i++){
        size[i].addEventListener("click", function(e){
            paratext.innerHTML = "Selected Size: " + size[i].innerHTML;
            console.log(size[i].innerHTML);
        });
    }
   


</script>


</body>
</html>