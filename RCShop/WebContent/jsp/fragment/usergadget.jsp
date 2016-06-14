<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="userGadget">
	<c:if test="${sessionScope.userType eq 'GUEST'}">
		<c:out value="Hello, guest!" />	
		<c:import url="/jsp/fragment/login.jsp" />
	</c:if>
	<c:if test="${sessionScope.userType eq 'ADMIN'}">
		<h4>Hello, ${sessionScope.userLogin}!</h4><br/>
		<form action="controller" method="GET">
			<input type="hidden" name="command" value="logout" /><br/>
			<input class="btn btn-primary" type="submit" value="Log out">
		</form>
	</c:if>
	<c:if test="${sessionScope.userType eq 'CLIENT'}">
		<h4>Hello, ${sessionScope.userLogin}!</h4><br/>
		<a href="controller?command=showuserorders">Your all orders</a><br/>
		You have orders in this session: ${sessionScope.cart.getOrders().size()}<br/>
		<a href="controller?command=showcart">Your cart</a><br/>
		You add to cart products: ${sessionScope.cart.getAllProductsCount()}<br/>
		<form action="controller" method="POST">
			<input type="hidden" name="command" value="logout" /><br/>
		<input class="btn btn-primary" type="submit" value="Log out">
		</form>
	</c:if>
</div>