<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Current Order Lists</title>
<link rel="icon" type="icon" href="/AllFoodItems/images.png">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <script src="https://kit.fontawesome.com/aece58d724.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css" />

   <style type="text/css">
		body
		{
		    counter-reset: Serial;          
		}

		tr td:first-child:before
		{
		  counter-increment: Serial;      
		  content: counter(Serial); 
		}
	</style>

</head>
<body style=background-color:#fa807232;>
<%@include file="AdminHeader.jsp" %>
<div class="container ">
	<table class="table table-striped table-hover table-bordered" style="margin-top:8%;margin-bottom:5%;">
    	<thead>
    		<tr>
    			<th scope="col" class="text-white text-center" colspan="9" style="background-color:#6e0b27"><h2>Current Order Lists</h2></th>
    		</tr>
    		<tr>
    		    <th scope="col">Order No.</th>
    			<th scope="col">Order Id</th>
    			<th scope="col">User Name</th>
    			<th scope="col" >Mob-No</th>
    			<th scope="col">Delivery Add.</th>
    			<th scope="col">Items Name</th>
    			<th scope="col" >Total Amount</th>
    			<th scope="col" >Status</th>
    		</tr> 		
    	</thead>
    	<tbody>
    	   <c:forEach items="${object}" var="book">
    	    <tr>
    	        <td></td>
    	    	<td>${book.orderId}</td>
    	    	<td>${book.id.name}</td>
    	    	<td>${book.id.mob_no}</td>
    	    	<td>${book.address}</td>
    	    	<td>${book.tname}</td>
    	    	<td>${book.total}</td>
    	    	<td><a href="removeOrder?orderId=${book.orderId}"><button type="button" class="btn" style="background-color:#ff150d;color:white;">Remove</button></a></td>
    	    </tr>
    	    
    	   </c:forEach>   	
        </tbody>
     </table>
    	
</div>

<%@ include file="footer.jsp" %>