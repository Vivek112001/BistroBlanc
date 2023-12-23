<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registered Users</title>
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
    			<th scope="col" class="text-white text-center" colspan="9" style="background-color:#a63f5a"><h2>Our Registered Users</h2></th>
    		</tr>
    		<tr>
    		    <th scope="col">S.No</th>
    			<th scope="col">User Id</th>
    			<th scope="col">User Name</th>
    			<th scope="col">Mail-id</th>
    			<th scope="col" >Mob-No</th>
    			<th scope="col">Country</th>
    			<th scope="col">City</th>
    			<th scope="col" >Pin-Code</th>
    		</tr> 		
    	</thead>
    	<tbody>
    	<c:forEach items="${object}" var="user">
    	    <tr>
    	        <td></td>
    	    	<td>${user.id}</td>
    	    	<td>${user.name}</td>
    	    	<td>${user.email}</td>
    	    	<td>${user.mob_no}</td>
    	    	<td>${user.country}</td>
    	    	<td>${user.city}</td>
    	    	<td>${user.pincode}</td>
    	    </tr>
    	    </c:forEach>
    	</tbody>
     </table>
    	
</div>
<%@ include file="footer.jsp" %>