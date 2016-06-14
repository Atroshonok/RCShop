<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/form_validation.js" ></script>

<div class="registrForm">
	<form action="controller" method="POST" title="Registration form" >
		<input type="hidden" name="command" value="registration" />
		<fieldset>
		<legend>Registration form</legend>
		<label>Login:<br/>
			<input id="loginData" type="text" name="login" required="required" placeholder="login" pattern="[a-zA-Z0-9]{6,45}" onkeyup="checkEnteredData('login')" /><span> *</span><br/>
			<sup id="login">Только латинские буквы и/или цифры (не менее 6 и не более 45)</sup>
		</label><br/>
		<label>Password:<br/>
			<input id="passwordData" type="password" name="password" required="required" placeholder="password" pattern="[a-zA-Z0-9]{6,45}" onkeyup="checkEnteredData('password')" /><span> *</span><br/>
			 <sup id="password">Только латинские буквы и/или цифры (не менее 6 и не более 45)</sup>
		</label><br/>
		<label>E-mail:<br/>
			<input id="emailData" type="email" name="email" required="required" placeholder="emailaddress@gmail.com" pattern="[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+" onkeyup="checkEnteredData('email')" /><span> *</span><br/> 
			<sup id="email">example: atroshonok@tut.by</sup>
		</label><br/>
		<label>First Name:<br/>
			<input id="firstNameData" type="text" name="firstName" pattern="[a-zA-Zа-яА-ЯёЁ ]+" onkeyup="checkEnteredData('firstName')" /><span> *</span><br/>
			<sup id="firstName">Латинские буквы и/или кириллица, разделенные пробелами </sup>
		</label><br/>
		<label>Last Name:<br/>
			<input id="lastNameData" type="text" name="lastName" pattern="[a-zA-Zа-яА-ЯёЁ ]+" onkeyup="checkEnteredData('lastName')" /><span> *</span><br/>
			<sup id="lastName">Латинские буквы и/или кириллица, разделенные пробелами </sup>
		</label><br/>
		<label>Shipping Address:<span> *</span><br/>
			<textarea name="shipAddress" rows="5" cols="25" placeholder="Your Shipping Address" required="required"></textarea>
		</label><br/>
		<label>Age:<br/>
			<input id="ageData" type="text" name="age" pattern="[0-9]{0,3}" onkeyup="checkEnteredData('age')" /><span> *</span><br/>
			<sup id="age">Только цифры</sup>
		</label><br/>
		<span>* - поля, обязательные для заполнения</span><br/><br/>
		<input class="btn btn-primary" type="submit" value="Send" >	
		</fieldset>
	</form>
</div>