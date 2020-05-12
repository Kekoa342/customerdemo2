<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>Student Tracker App</title>
	<script>
	function openCity(evt, cityName) {
		  // Declare all variables
		  var i, tabcontent, tablinks;

		  // Get all elements with class="tabcontent" and hide them
		  tabcontent = document.getElementsByClassName("tabcontent");
		  for (i = 0; i < tabcontent.length; i++) {
		    tabcontent[i].style.display = "none";
		  }

		  // Get all elements with class="tablinks" and remove the class "active"
		  tablinks = document.getElementsByClassName("tablinks");
		  for (i = 0; i < tablinks.length; i++) {
		    tablinks[i].className = tablinks[i].className.replace(" active", "");
		  }

		  // Show the current tab, and add an "active" class to the button that opened the tab
		  document.getElementById(cityName).style.display = "block";
		  evt.currentTarget.className += " active";
		}
	</script>
	
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>
	<!-- Tab links -->
	
	<div class="tab">
  		<button class="tablinks" onclick="openCity(event, 'Customer')">Customers</button>
  		<button class="tablinks" onclick="openCity(event, 'Item')">Items</button>
  		<button class="tablinks" onclick="openCity(event, 'Manufacturer')">Manufacturers</button>
  		<button class="tablinks" onclick="openCity(event, 'Store')">Stores</button>
  		<button class="tablinks" onclick="openCity(event, 'Promotion')">Promotions</button>
	</div>

<!-- Tab content -->
	<div id="Customer" class="tabcontent">
  		<h3>Customer List</h3>
  		<input type="button" value="Add Student" 
				   onclick="window.location.href='add-customer.jsp'; return false;"
				   class="add-student-button"
			/>
			
			<table>
			
				<tr>
					<th>Customer ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Address</th>
				
				</tr>
				
				<c:forEach var="tempCustomer" items="${CUSTOMER_LIST}">
					
					<!-- set up a link for each student -->
					<c:url var="tempLink" value="CustomerController">
						<c:param name="command" value="LOAD" />
						<c:param name="customerId" value="${tempCustomer.customerId}" />
					</c:url>

					<!--  set up a link to delete a student -->
					<c:url var="deleteLink" value="CustomerController">
						<c:param name="command" value="DELETE" />
						<c:param name="customerId" value="${tempCustomer.customerId}" />
					</c:url>
																		
					<tr>
						<td> ${tempCustomer.customerId} </td>
						<td> ${tempCustomer.customerFirstName} </td>
						<td> ${tempCustomer.customerLastName} </td>
						<td> ${tempCustomer.customerAddress} </td>
						<td> 
							<a href="${tempLink}">Update</a> 
							 | 
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
							Delete</a>	
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
	</div>

	<div id="Item" class="tabcontent">
  		<h3>Item</h3>
  					<table>
			
				<tr>
					<th>Item Id</th>
					<th>Item Code</th>
					<th>Item Description</th>
				
				</tr>
				
				<c:forEach var="tempItem" items="${ITEM_LIST}">
					

																		
					<tr>
						<td> ${tempItem.itemId} </td>
						<td> ${tempItem.itemCode} </td>
						<td> ${tempItem.itemDescription} </td>
						<td> 
							<a href="${tempLink}">Update</a> 
							 | 
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
							Delete</a>	
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
	</div>

	<div id="Manufacturer" class="tabcontent">
  		<h3>Manufacturers</h3>
  					<table>
			
				<tr>
					<th>Manufacturer Id</th>
					<th>Manufacturer Name</th>
					<th>Manufacturer Address</th>
				
				</tr>
				
				<c:forEach var="tempManufacturer" items="${MANUFACTURER_LIST}">
					

																		
					<tr>
						<td> ${tempManufacturer.manufactId} </td>
						<td> ${tempManufacturer.manufactName} </td>
						<td> ${tempManufacturer.manufactAddress} </td>
						<td> 
							<a href="${tempLink}">Update</a> 
							 | 
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
							Delete</a>	
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
	</div>
	
	<div id="Store" class="tabcontent">
  		<h3>Stores</h3>
  					<table>
			
				<tr>
					<th>Store Id</th>
					<th>Store Name</th>
					<th>Store Address</th>
				
				</tr>
				
				<c:forEach var="tempStore" items="${STORE_LIST}">
					

																		
					<tr>
						<td> ${tempStore.storeId} </td>
						<td> ${tempStore.storeName} </td>
						<td> ${tempStore.storeAddress} </td>
						<td> 
							<a href="${tempLink}">Update</a> 
							 | 
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
							Delete</a>	
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
	</div>
	
	<div id="Promotion" class="tabcontent">
  		<h3>Promotions</h3>
  					<table>
			
				<tr>
					<th>Promotion Id</th>
					<th>Promotion Start</th>
					<th>Promotion End</th>
					<th>Promotion Percentage</th>
				
				</tr>
				
				<c:forEach var="tempPromotion" items="${PROMOTION_LIST}">
					

																		
					<tr>
						<td> ${tempPromotion.promoId} </td>
						<td> ${tempPromotion.promoStart} </td>
						<td> ${tempPromotion.promoEnd} </td>
						<td> ${tempPromotion.promoPercent} </td>
						<td> 
							<a href="${tempLink}">Update</a> 
							 | 
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
							Delete</a>	
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
	</div>

</body>


</html>








