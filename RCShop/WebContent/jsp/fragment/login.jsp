<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="loginForm" >
	<form  name="loginForm" method="POST" action="controller">
		<input type="hidden" name="command" value="login" /> 
		<label>Login:<br/> 
			<input type="text" name="login" value="" />
		</label><br/>
		<label>Password:<br/>
			<input type="password" name="password" value="" />
		</label><br/>
		<input class="btn btn-default" type="submit" value="Log in" />&nbsp;
		<a href="controller?command=getregistrform" >Registration</a>
	</form><br>
	${errorLoginPassMessage} <br/>	
</div>
