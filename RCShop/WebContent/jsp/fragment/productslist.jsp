<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${sessionScope.userType eq 'GUEST'}">
	<h1>Hello! Welcome in our store!</h1><br/>
	<h4>If you want to buy something please login or register.</h4><br/>
</c:if>
${productAddedMessage}<br/>
<c:forEach var="product" items="${sessionScope.productsList}" varStatus="status">
	<b>Product:</b> <c:out value="${product.name}"/><br/> 
	<b>Price:</b> <c:out value="${product.price}"/> $<br/>
	<b>Description:</b> <c:out value="${product.description}"/><br/>
		<c:if test="${sessionScope.userType eq 'CLIENT' or 'ADMIN'}">
			<form id="addProductButton" action="controller" method="GET" >
				<input type="hidden" name="command" value="addtocart" />
				<input type="hidden" name="productid" value="${product.id}" />
				<input type="hidden" name="productname" value="${product.name}" />
				<input type="hidden" name="productprice" value="${product.price}" />
				<input class="btn btn-default" type="submit" value="Add to cart" />
			</form>
		</c:if>
		<c:if test="${sessionScope.userType eq 'ADMIN'}">
			<form id="editProductButton" action="controller" method="GET" >
				<input type="hidden" name="command" value="editproduct" />
				<input type="hidden" name="productid" value="${product.id}" />
				<input class="btn btn-default" type="submit" value="Edit" />
			</form>
		</c:if>					
<br/>
<hr/>
</c:forEach>