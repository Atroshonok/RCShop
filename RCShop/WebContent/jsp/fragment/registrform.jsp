<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/form_validation.js" ></script>
<style type="text/css">
	div.col-xs-2 {
		text-align: right;
	}
</style>

<div class="registrForm">
	<form class="form-horizontal" action="controller" method="POST" title="Registration form" >
		<input type="hidden" name="command" value="registration" />
		<h3>Registration form</h3><br/>
		
		<div id="regLogin" class="form-group">
			<div class="col-xs-2">
	   			<label for="loginData" class="control-label">Login:</label>
			</div>
			<div class="col-xs-4">
      			<input id="regLoginData" type="text" name="login" required="required" placeholder="login" pattern="[a-zA-Z0-9]{6,45}" onselect="checkEnteredData('regLogin')" oninput="checkEnteredData('regLogin')" class="form-control" />
      			<span id="regLoginIcon"></span>
      			<span class="help-block">Только латинские буквы и/или цифры (не менее 6 и не более 45)</span>
			</div>
    	</div>
    	
    	<div id="regPassword" class="form-group">
			<div class="col-xs-2">
	   			<label for="regPasswordData" class="control-label">Password:</label>
			</div>
			<div class="col-xs-4">
      			<input id="regPasswordData" type="password" name="password" required="required" placeholder="password" pattern="[a-zA-Z0-9]{6,45}" oninput="checkEnteredData('regPassword')" class="form-control"/>
      			<span id="regPasswordIcon"></span>
      			<span class="help-block">Только латинские буквы и/или цифры (не менее 6 и не более 45)</span>
			</div>
    	</div>
		
		<div id="email" class="form-group">
			<div class="col-xs-2">
	   			<label for="emailData" class="control-label">E-mail:</label>
			</div>
			<div class="col-xs-4">
      			<input id="emailData" type="email" name="email" required="required" placeholder="emailaddress@gmail.com" pattern="[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+" oninput="checkEnteredData('email')" class="form-control"/>
      			<span id="emailIcon"></span>
      			<span class="help-block">example: atroshonok@tut.by</span>
			</div>
    	</div>
    	
    	<div id="firstName" class="form-group">
			<div class="col-xs-2">
	   			<label for="firstNameData" class="control-label">First Name:</label>
			</div>
			<div class="col-xs-4">
      			<input id="firstNameData" type="text" name="firstName" required="required" placeholder="first name" pattern="[a-zA-Zа-яА-ЯёЁ ]+" oninput="checkEnteredData('firstName')" class="form-control"/>
      			<span id="firstNameIcon"></span>
      			<span class="help-block">Латинские буквы и/или кириллица, разделенные пробелами</span>
			</div>
    	</div>
    	
    	<div id="lastName" class="form-group">
			<div class="col-xs-2">
	   			<label for="lastNameData" class="control-label">Last Name:</label>
			</div>
			<div class="col-xs-4">
      			<input id="lastNameData" type="text" name="lastName" required="required" placeholder="last name" pattern="[a-zA-Zа-яА-ЯёЁ ]+" oninput="checkEnteredData('lastName')" class="form-control"/>
      			<span id="lastNameIcon"></span>
      			<span class="help-block">Латинские буквы и/или кириллица, разделенные пробелами</span>
			</div>
    	</div>
    	
    	<div id="shipAddress" class="form-group">
			<div class="col-xs-2">
	   			<label for="shipAddressData" class="control-label">Shipping Address:</label>
			</div>
			<div class="col-xs-4">
				<textarea id="shipAddressData" name="shipAddress" placeholder="Your Shipping Address" required="required" oninput="checkEnteredData('shipAddress')" class="form-control" rows="5"></textarea>
      			<span id="shipAddressIcon"></span>
			</div>
    	</div>
    	
    	<div id="age" class="form-group">
			<div class="col-xs-2">
	   			<label for="ageData" class="control-label">Age:</label>
			</div>
			<div class="col-xs-4">
      			<input id="ageData" type="text" name="age" required="required" pattern="[0-9]{0,3}" oninput="checkEnteredData('age')" class="form-control"/>
      			<span id="ageIcon"></span>
      			<span class="help-block">Только цифры</span>
			</div>
    	</div>
		
		<span>Все поля обязательны для заполнения</span><br/><br/>
		 <button class="btn btn-primary" type="submit">
		 	<span class="glyphicon glyphicon-send" ></span> Registration
		 </button>
		 <button class="btn btn-default" type="reset">
		 	Reset
		 </button>
	</form>
</div>