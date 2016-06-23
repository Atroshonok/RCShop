<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript" src="js/navbar_animation.js"></script>

<div class="navbar">
	<ul class="nav nav-pills nav-stacked">
		<li id="mainItem" role="presentation" onclick="setActiveStyleAttribute('mainItem')"><a href="controller?command=getmainpage">Main</a></li>
		<li id="rccarsItem" role="presentation" onclick="setActiveStyleAttribute('rccarsItem')"><a href="controller?command=showproducts&categoryid=1">RC Cars</a></li>
		<li id="rcplanesItem" role="presentation" onclick="setActiveStyleAttribute('rcplanesItem')"><a href="controller?command=showproducts&categoryid=2">RC Planes</a></li>
		<li id="fpvItem" role="presentation" onclick="setActiveStyleAttribute('fpvItem')"><a href="controller?command=showproducts&categoryid=3">FPV Parts</a></li>
		<li id="otherItem" role="presentation" onclick="setActiveStyleAttribute('otherItem')"><a href="controller?command=showproducts&categoryid=4">Other Products</a></li>
	</ul>
</div>