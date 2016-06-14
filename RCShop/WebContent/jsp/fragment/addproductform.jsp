<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="addProductForm">
	<form action="controller" method="POST" title="Add product form" >
		<input type="hidden" name="command" value="saveproduct" />
		<fieldset>
		<legend>Add product form</legend>
		<label>
			<input type="text" name="name" required="required" placeholder="Product name" /> Name
		</label><br/>
		<label>
			<input type="text" name="price" required="required" placeholder="Product price" pattern="[0-9]+\.[0-9]{0,2}" /> Price, $ [ Format: *.XX ] 
		</label><br/>
		<label>
			<input type="text" name="categoryID" required="required" placeholder="Product category ID" pattern="[0-9]+" /> Category ID
		</label><br/>
		<label>
			<input type="text" name="count" required="required" placeholder="Count"  pattern="[0-9]+" /> Count, pc.
		</label><br/>
		<label>Description:<br/>
			<textarea name="description" rows="10" cols="50" contenteditable="true" >no description</textarea> 
		</label><br/>
		<input class="btn btn-primary" type="submit" value="Save" >	
		</fieldset>
	</form>
</div>