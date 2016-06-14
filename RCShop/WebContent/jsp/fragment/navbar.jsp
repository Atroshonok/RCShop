<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="navbar">
	<form id="mainButton" action="controller" method="GET" >
		<input type="hidden" name="command" value="getmainpage" />
		<input class="btn btn-default btn-block" type="submit" value="MAIN" />
	</form><br/>

	<form id="rcautoButton" action="controller" method="GET" >
		<input type="hidden" name="command" value="showproducts" />
		<input type="hidden" name="categoryid" value="1" />
		<input class="btn btn-default btn-block" type="submit" value="RC AUTOS" />
	</form><br/>	
	
	<form id="rcplaneButton" action="controller" method="GET" >
		<input type="hidden" name="command" value="showproducts" />
		<input type="hidden" name="categoryid" value="2" />
		<input class="btn btn-default btn-block" type="submit" value="RC PLANES" />
	</form><br/>	
	
	<form id="fpvButton" action="controller" method="GET" >
		<input type="hidden" name="command" value="showproducts" />
		<input type="hidden" name="categoryid" value="3" />
		<input class="btn btn-default btn-block" type="submit" value="FPV PARTS" />
	</form><br/>
	
	<form id="otherButton" action="controller" method="GET" >
		<input type="hidden" name="command" value="showproducts" />
		<input type="hidden" name="categoryid" value="4" />
		<input class="btn btn-default btn-block" type="submit" value="OTHER PRODUCTS" />
	</form><br/>
</div>