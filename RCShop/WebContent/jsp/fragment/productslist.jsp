<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${sessionScope.userType eq 'GUEST'}">
	<h1>Hello! Welcome in our store!</h1><br/>
	<h4 class="alert alert-danger">If you want to buy something please login or register.</h4><br/>
</c:if>
<c:if test="${productAddedMessage ne null}">
	<div class="alert alert-success" role="alert">
		${productAddedMessage}	
	</div>
</c:if>
<c:forEach var="product" items="${sessionScope.productsList}" varStatus="status">
	<div class="panel panel-primary">
  		<div class="panel-heading">
    		<h3 class="panel-title">Product: <c:out value="${product.name}"/> 
    			<span class="badge">Price: <c:out value="${product.price}"/><span class="glyphicon glyphicon-usd"></span></span>
    		</h3> 
 		</div>
  		<div class="panel-body">
  			<div class="row">
  				<div class="col-md-9">
  					<b>Description:</b><br/>
  					<c:out value="${product.description}"/>
  				</div>
  				<div class="col-md-3">
  					<img alt="picture" width="200px" src="./images/producte-${product.id}.jpg">
  				</div>
  			</div>
  			<div id="cartAddButton">
  				<c:if test="${sessionScope.userType eq 'CLIENT' or 'ADMIN'}">
					<form id="addProductButton" action="controller" method="POST" >
						<input type="hidden" name="command" value="addtocart" />
						<input type="hidden" name="productid" value="${product.id}" />
						<input type="hidden" name="productname" value="${product.name}" />
						<input type="hidden" name="productprice" value="${product.price}" />
						<button class="btn btn-primary" type="submit">
							<span class="glyphicon glyphicon-shopping-cart"></span> Add to cart
						</button>
					</form>
				</c:if>
				<c:if test="${sessionScope.userType eq 'ADMIN'}">
					<form id="editProductButton" action="controller" method="POST" >
						<input type="hidden" name="command" value="editproduct" />
						<input type="hidden" name="productid" value="${product.id}" />
						<button class="btn btn-warning" type="submit">
							<span class="glyphicon glyphicon-edit"></span> Edit
						</button>
					</form>
				</c:if>	
  			</div>
  		</div>
	</div>
</c:forEach>

