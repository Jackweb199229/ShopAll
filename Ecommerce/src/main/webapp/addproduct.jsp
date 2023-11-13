<jsp:include page= "header.jsp"/>



<form action="additems" method="get" class="mx-auto w-75 abc" >
  <div class="mb-3">
    <label for="exampleInputName" class="form-label mx-3 ab">Name</label>
    <input type="Product name" name="name" class="form-control w-75 mx-3" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    
    
    <div class="mb-3">
    <label for="exampleInputDescription" class="form-label mx-3 ab">Description</label>
    <input type="Description" name="description" class="form-control w-75 mx-3" id="exampleInputDescription" aria-describedby="emailHelp">
    </div>
    
    <div class="mb-3">
    <label for="exampleInputImage" class="form-label mx-3 ab">Image Url</label>
    <input type="text" name="imageUrl" class="form-control w-75 mx-3" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    
    <div class="mb-3">
    <label for="exampleInputImage" class="form-label mx-3 ab">Price</label>
    <input type="number" name="price" class="form-control w-75 mx-3" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    
    <div class="mb-3">
    <label for="exampleInputImage" class="form-label mx-3 ab">Size</label>
    <input type="number" name="size" class="form-control w-75 mx-3" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    
  
  
  <button type="submit" class="btn btn-primary mx-3 ab mb-3">Submit</button>
  
</form>


<jsp:include page= "footer.jsp"/> 
</html>