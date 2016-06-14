<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Products</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>
<body>
<div class="container">
	<div class="header">	
		<c:import url="/jsp/fragment/header.jsp" />
	</div>
	<hr/>
	<div class="body">
		<div class="leftPart" >
			<c:import url="/jsp/fragment/usergadget.jsp" /><br/>
			<hr/>
			<c:import url="/jsp/fragment/navbar.jsp" />
			<c:if test="${sessionScope.userType eq 'ADMIN'}">
				<hr/>
				<i>Only for Administrator</i>
				<hr/>
				<c:import url="/jsp/fragment/adminsidebar.jsp" />
			</c:if>
		</div>	
		<div class="rigthPart">
		<%--	${productAddedMessage}<br/> --%>
			<c:import url="/jsp/fragment/productslist.jsp" />
		</div>
	
	</div>
	<hr/>
	<c:import url="/jsp/fragment/footer.jsp" />
</div>
</body>
</html>