<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Items</title>
<link rel="icon" type="icon" href="/AllFoodItems/images.png">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <script src="https://kit.fontawesome.com/aece58d724.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css" />

</head>
<body style=background-color:#fa807232;>
<%@include file="AdminHeader.jsp" %>
<div class="container">
  <div class="bg-dark text-warning display-4 px-4 foody ">Add Food Items</div>
  
  <form action="addFoodItems" method="get" class="border border-dark px-2  mb-5">
<div >
<label for="category" class="mt-2">Category</label><br/>
<input type="text" class="form-control" id="category" name="category" placeholder="Enter item Category">
</div>

<div>
<label for="item_name" class="mt-2 ">Item Name</label><br/>
<input type="text" class="form-control" id="item_name" name="item_name" placeholder="Enter item">
</div>

<div>
<label for="item_description" class="mt-2 ">Item Description</label><br/>
<input type="text" class="form-control" id="item_description" name="item_description" placeholder="Description of item">
</div>

<div>
<label for="votes" class="mt-2 ">Votes</label><br/>
<input type="number" class="form-control" id="votes" name="votes" placeholder="Votes">
</div>

<div>
<label for="price" class="mt-2 ">Price</label><br/>
<input type="number" class="form-control" id="price" name="price" value="0">
</div>


<div>
<label for="img_url" class="mt-2 ">Image Url</label><br/>
<input type="text" class="form-control" id="img_url" name="img_url" placeholder="Enter url">
</div>

<input type="submit" class="btn btn-success mt-4 mb-2 " value="Save">
</form>
  </div>
<%@ include file="footer.jsp" %>