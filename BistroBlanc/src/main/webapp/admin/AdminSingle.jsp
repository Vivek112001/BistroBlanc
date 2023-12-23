<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BistroBlanc Item</title>
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
<div class="container m-5 p-5">	
		
        <div class="d-flex gap-0 column-gap-3">
            <div>
                <img src="AllFoodItems/${object1.img_url}" alt="${object1.item_name}" class="img-fluid rounded-5 mx-auto d-block" width="600" height="800" >
            </div>
            <div class=" gap-0 row-gap-3 d-inline-flex flex-column justify-content-center me-5">
                    <div class=" bg-success text-white align-self-start p-2">
                    Special 50% Off 
                    </div>
                    <h1 class="fs-1 fw-bold">${object1.item_name}</h1>
                    <p class="fs-4 fw-normal lh-base">
                    ${object1.item_description}
                    </p>
                    <div ><span class="fw-3 text-danger">-50%</span> <span class="fs-3 fw-bold">&#x20B9;${object1.price}</span></div>
                    <div class="fw-4 text-secondary ">Price:&#x20B9;<s>${object1.price*2}</s></div>
                    <div class="d-flex gap-0 column-gap-3">
                         <a href="update?item_id=${object1.item_id}"><button  type="submit" class="btn align-self-start btn-primary">Update</button></a>
                         <a href="deleteItem?item_id=${object1.item_id}"><button  type="submit" class="btn align-self-start btn-danger">Delete</button></a>
                    </div>
            </div>
        </div>
</div>
<%@ include file="footer.jsp" %>