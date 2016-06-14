<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="adminsidebar">
	<form id="showAllProductsButton" action="controller" method="POST" >
		<input type="hidden" name="command" value="showallproducts" />
		<input class="btn btn-default btn-block btn-danger" type="submit" value="Show all products" />
	</form><br/>	
	
	<form id="showAllUsersButton" action="controller" method="POST" >
		<input type="hidden" name="command" value="showallusers" />
		<input class="btn btn-default btn-block btn-danger" type="submit" value="Show all users" />
	</form><br/>	
	
	<form id="addNewProductButton" action="controller" method="POST" >
		<input type="hidden" name="command" value="addnewproduct" />
		<input class="btn btn-default btn-block btn-danger" type="submit" value="Add new product" />
	</form><br/>
</div>