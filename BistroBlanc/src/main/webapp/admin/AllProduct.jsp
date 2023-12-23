<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All BistroBlanc Items</title>
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
<div class="container   p-2 mt-5" >
<div class="active">
   <img src="images/banner2.jpg"  class="mt-5 img-fluid rounded-5 banner" />
   <img src="images/banner1.jpg" class="mt-5 img-fluid rounded-5 banner" />
   </div>
        <h1 class="text-center mt-4 mb-4" style="color:#3a506e;">Explore Our All Food Items</h1>
       
         <!-- Main Course Items Row ......... -->
         
        <h2 class="mt-4 mb-4" id="Main Course" style="color:#17573a;">Main Course Items</h2>
        <div class="d-flex gap-0 column-gap-4" id="naman">
        <c:forEach items="${object}" var="food">
            
            	<div>
                	<a href="adminSingle?item_id=${food.item_id}" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2 ">
                    <img src="AllFoodItems/${food.img_url}" alt="${food.item_name}" class="img-fluid rounded-5 mx-auto mt-2 d-block" width="200" height="auto">
                    	<div class="card_content">
                        	<h3 class="mt-2">${food.item_name}</h3>
                        	<div class="d-flex mt-4">
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star-half fa-xl" style="color: #e0ce00;"></i>
                            	<p class="text-secondary justify-content-center">${food.votes}votes</p>
                        	</div>
                        	<p class=" fs-4">&#x20B9;${food.price}</p>
                  	 </a>
                        	<div class="d-flex gap-0 column-gap-3">
                         		<a href="update?item_id=${food.item_id}"><button  type="submit" class="btn align-self-start btn-primary">Update</button></a>
                        		<a href="deleteItem?item_id=${food.item_id}"><button  type="submit" class="btn align-self-start btn-danger">Delete</button></a>
                       	 	</div>     
                         </div>
                
                  </div>

          </c:forEach>
            
           <!-- Fast food Row ......... -->
            
          </div>
          
           <h2 class=" mt-4 mb-4" id="Fast Food" style="color:#608f64">Fast Food Items</h2>
        <div class="d-flex gap-0 column-gap-4" id="naman">
        <c:forEach items="${object2}" var="food">
            
            	<div>
                	<a href="adminSingle?item_id=${food.item_id}" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2 ">
                    <img src="AllFoodItems/${food.img_url}" alt="${food.item_name}" class="img-fluid rounded-5 mx-auto mt-2 d-block" width="200" height="auto">
                    	<div class="card_content">
                        	<h3 class="mt-2">${food.item_name}</h3>
                        	<div class="d-flex mt-4">
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star-half fa-xl" style="color: #e0ce00;"></i>
                            	<p class="text-secondary justify-content-center">${food.votes}votes</p>
                        	</div>
                        	<p class=" fs-4">&#x20B9;${food.price}</p>
                  	 </a>
                        	<div class="d-flex gap-0 column-gap-3">
                         		<a href="update?item_id=${food.item_id}"><button  type="submit" class="btn align-self-start btn-primary">Update</button></a>
                        		<a href="deleteItem?item_id=${food.item_id}"><button  type="submit" class="btn align-self-start btn-danger">Delete</button></a>
                       	 	</div>       
                         </div>
                
                  </div>

          </c:forEach>
            
             <!-- Dessert Row ......... -->
            
          </div>
          
          <h2 class="text-info mt-4 mb-4" id="Dessert">Dessert Items</h2>
        <div class="d-flex gap-0 column-gap-4" >
        <c:forEach items="${object3}" var="food">
            
            	<div>
                	<a href="adminSingle?item_id=${food.item_id}" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2 ">
                    <img src="AllFoodItems/${food.img_url}" alt="${food.item_name}" class="img-fluid rounded-5 mx-auto mt-2 d-block" width="200" height="auto">
                    	<div class="card_content">
                        	<h3 class="mt-2">${food.item_name}</h3>
                        	<div class="d-flex mt-4">
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star fa-xl" style="color: #e0ce00;"></i>
                            	<i class="fa-solid fa-star-half fa-xl" style="color: #e0ce00;"></i>
                            	<p class="text-secondary justify-content-center">${food.votes}votes</p>
                        	</div>
                        	<p class=" fs-4">&#x20B9;${food.price}</p>
                  	 </a>
                        	<div class="d-flex gap-0 column-gap-3 mb-5">
                         		<a href="update?item_id=${food.item_id}"><button  type="submit" class="btn align-self-start btn-primary">Update</button></a>
                        		<a href="deleteItem?item_id=${food.item_id}"><button  type="submit" class="btn align-self-start btn-danger">Delete</button></a>
                       	 	</div>    
                         </div>
                
                  </div>

          </c:forEach>
            
            
          </div>
    </div>
    <script type="text/javascript">
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let slides = document.getElementsByClassName("banner");
        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1;
        }
        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 2000); // Change image every 6 seconds (6000 milliseconds)
    }
    </script>
<%@ include file="footer.jsp" %>