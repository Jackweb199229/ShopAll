<jsp:include page= "header.jsp"/>

<!DOCTYPE html>
<html lang="en">


<style>
  body{
    background: rgb(214, 198, 221);
  }

  .imgBox .img{
    width: 190px;
    height: 190px;
    margin: 5px;
  }

  @media screen and (max-width: 1185px) {
    .imgBox .img{
    width: 160px;
    height: 215px;
    margin: 5px;
  }
}
  @media screen and (max-width: 1000px) {
    .imgBox .img{
    width: 122px;
    height: 263px;
    margin: 5px;
  }
}
  @media screen and (max-width: 192px) {
    .imgBox .img{
    width: 245px;
    height: 263px;
    margin: 5px;
  }
}
  @media screen and (max-width: 768px) {
    .imgBox .img{
    width: 245px;
    height: 263px;
    margin: 5px;
  }
}
  @media screen and (max-width: 500px) {
    .imgBox .img{
    width: 245px;
    height: 263px;
    margin: 5px;
  }
}


</style>
<body>

    <div class="container my-5 mx-auto">
    <div class="card w-50 mx-auto">
        <div class="card-header">
          <ul class="nav nav-pills card-header-pills">
            <li class="nav-item">
              <a class="nav-link " href="#">LinkedIn</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="#">Portfolio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Instagram</a>
            </li>
          </ul>
        </div>
        <div class="card mb-3 mx-auto my-3" style="max-width: 540px;">
            <div class="row no-gutters">
              <div class="col-md-4 imgBox">
                <img src="image/img.jpg" class="img" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title px-2"> Md Jafar</h5>
                  <p class="card-text px-2"> <strong>Designation:</strong> Software Developer </p>
                  <p class="card-text px-2"> <strong>Contribution in this project:</strong> <br> Front-end & Back-end </p>
                </div>
              </div>
            </div>
          </div>
      </div>

    <div class="container my-5 mx-auto">
    <div class="card w-50 mx-auto">
        <div class="card-header">
          <ul class="nav nav-pills card-header-pills">
            <li class="nav-item">
              <a class="nav-link " href="#">LinkedIn</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="#">Portfolio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Instagram</a>
            </li>
          </ul>
        </div>
        <div class="card mb-3 mx-auto my-3" style="max-width: 540px;">
            <div class="row no-gutters">
              <div class="col-md-4 imgBox">
                <img src="img.jpg" class="img" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title px-2"> Noman Quamar</h5>
                  <p class="card-text px-2"> <strong>Designation:</strong> Software Developer </p>
                  <p class="card-text px-2"> <strong>Contribution in this project:</strong> <br> Front-end & Back-end </p>
                </div>
              </div>
            </div>
          </div>
      </div>

    </div>
</div> 
  <jsp:include page= "footer.jsp"/>
    
</body>
</html>



