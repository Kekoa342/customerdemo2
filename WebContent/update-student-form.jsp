<!DOCTYPE html>
<html>

<head>
	<title>Update Student</title>

	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/add-student-style.css">	
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>FooBar University</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Update Student</h3>
		
		<form action="CustomerController" method="GET">
		
			<input type="hidden" name="command" value="UPDATE" />

			<input type="hidden" name="customerId" value="${THE_CUSTOMER.customerId}" />
			
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><input type="text" name="customerFirstName" 
								   value="${THE_CUSTOMER.customerFirstName}" /></td>
					</tr>

					<tr>
						<td><label>Last name:</label></td>
						<td><input type="text" name="customerLastName" 
								   value="${THE_CUSTOMER.customerLastName}" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="customerAddress" 
								   value="${THE_CUSTOMER.customerAddress}" /></td>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
					
				</tbody>
			</table>
		</form>
		
		<div style="clear: both;"></div>
		
		<p>
			<a href="CustomerController">Back to List</a>
		</p>
	</div>
</body>

</html>











