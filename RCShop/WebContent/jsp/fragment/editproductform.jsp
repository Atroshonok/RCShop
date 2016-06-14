<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="editProductForm">
	<form action="controller" method="POST" title="Edit product form" >
		<input type="hidden" name="command" value="saveeditedproduct" />
		<fieldset>
		<legend>Edit product form</legend>
		<label>
			<input type="text" name="id" required="required" value="${product.id}" contenteditable="false" /> ID
		</label><br/>
		<label>
			<input type="text" name="name" required="required" value="${product.name}" /> Name
		</label><br/>
		<label>
			<input type="text" name="price" required="required" value="${product.price}" pattern="[0-9]+\.[0-9]{0,2}" /> Price, $ [ Format: *.XX ] 
		</label><br/>
		<label>
			<input type="text" name="categoryID" required="required" value="${product.category.id}" pattern="[0-9]+" /> Category ID
		</label><br/>
		<label>
			<input type="text" name="count" required="required" value="${product.count}" pattern="[0-9]+" /> Count, pc.
		</label><br/>
		<label>Description:<br/>
			<textarea name="description" rows="10" cols="50" contenteditable="true" >${product.description}</textarea> 
		</label><br/>
		<input class="btn btn-primary" type="submit" value="Save" >	
		</fieldset>
	</form>
</div>