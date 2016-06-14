<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="orderedProducts">
	<table class ="table table-bordered table-striped">
		<caption><b>Ordered products list</b></caption>
			<tr>
				<th>Product</th>
				<th>Price, $</th>
				<th>Count</th>
				<th>Action</th>
			</tr>
		<c:forEach var="product" items="${sessionScope.cart.orderedProducts.keySet()}" varStatus="status">
			<tr>
				<td><c:out value="${product.name}" /></td>
				<td><c:out value="${product.price}" /></td>
				<c:set var="count" value="${sessionScope.cart.orderedProducts.get(product)}" />
				<td><c:out value="${count}" /></td>
				<td>
				<form id="removeProductButton" action="controller" method="GET" >
					<input type="hidden" name="command" value="removefromcart" />
					<input type="hidden" name="productid" value="${product.id}" />
					<input type="hidden" name="productname" value="${product.name}" />
					<input type="hidden" name="productprice" value="${product.price}" />
					<input class="btn btn-default" type="submit" value="Remove from cart" />
				</form>
				</td>
			</tr>
		</c:forEach>
	</table><br/>
	<p>Common ordered products price = <b><c:out value="${sessionScope.cart.sumPrice}" /> $</b></p>
	<form id="makeOrder" action="controller" method="POST">
		<input type="hidden" name="command" value="order" />
		<input class="btn btn-primary" type="submit" value="Make order" />
	</form>
</div>