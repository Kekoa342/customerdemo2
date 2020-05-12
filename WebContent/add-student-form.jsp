<!DOCTYPE html>
<html>

<head>
	<title>Add Student</title>


	<link type="text/css" rel="stylesheet" href="css/style2.css">	
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<h2>Foobar Products</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Add Customer</h3>
		<hr>
		
		<form action="CustomerController" method="GET">
		
			<input type="hidden" name="command" value="ADD" />
			
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><input type="text" name="firstName" /></td>
					</tr>

					<tr>
						<td><label>Last name:</label></td>
						<td><input type="text" name="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="address" /></td>
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











