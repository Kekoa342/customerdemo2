<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>First Page- Select an image</title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <script type="text/javascript" src="main.js"></script>
    </head>
    <body>
        <h1>Dash Board</h1>
         <div id="myDropDown">
        <button id="textconfirm"><p class = "runp">Confirm Text</p></button>
        <form action="CustomerController" method ="GET">
        <select id="from">
        <option selected disabled value="0">Select Table</option>
        <option value="customer,">Customer</option>
        </select>
        <select id="select">
        <option selected disabled value="0,"> What Columns Would You Like to See</option>
            <option value="all,">Select All</option>
            <option value="2">First, Last</option>
            <option value="3">Full Names</option>
        </select>
        
        <select id="additional1">
        <option selected disabled value="0,">Additional Parameter 1</option>
        <option value="1,">Where ID</option>
        <option value="2,">Where First Name</option>
        <option value="3,">Where Last Name</option>
        </select>
        
        <select id="value1">
        <option selected disabled value="0,">Value 1</option>
        <option value="id1,">Equals 1</option>
        <option value="id2,">Equals 2</option>
        <option value="id3,">Equals 3</option>
        <option value="id4,">Equals 4</option>
        <option value="id5,">Equals 5</option>
        <option value="id6,">Equals 6</option>
        <option value="id7,">Equals 7</option>
        <option value="id8,">Equals 8</option>
        <option value="id9,">Equals 9</option>
        <option value="id10,">Equals 10</option>
        <option value="fname4,">Is Mary</option>
        </select>
        
        <input type="text" id="lname" name="text2">
        <input type="text" id="fname" name="text1">
        
        
        <select id="additional2">
        <option selected disabled value="0,">Additional Parameter 2</option>
        <option value ="1,">OR ID</option>
        <option value ="2,">OR First Name</option>
        <option value ="3,">OR Last Name</option>
        <option value ="4,">Order By</option>
        </select>
        
        <select id="value2">
        <option selected disabled value="0">Value 2</option>
        </select>
        
        <button name="command" class="runbutton" id="run" value=""><p class = "runp">Run it!</p></button>
        </form>

        
    </div>
        
        <div class="container">
        <form action="CustomerController" method ="GET"> 
        
			<button name="command" value="LIST,all">
			<img src="button1.jpg" width="275" height="200">
			<p class = "picturep">Select All</p>
			</button>
			
			<button class="bigbutton" name="command" value="LIST,adrian">
			<img src="button2.jpg" width="275" height="200">
			<p class = "picturep">Adrian!!!</p>
			</button>
			
			<button class="bigbutton" name="command" value="LIST,idseven">
			<img src="button3.jpg" width="275" height="200">
			<p class = "picturep">Number 7</p>
			</button>
			
			<button class="bigbutton" name="command" value="LIST,notrocky">
			<img src="button4.jpg" width="275" height="200">
			<p class = "picturep">Not Rocky</p>
			</button>
			
			<button class="bigbutton" name="command" value="LIST,likewil">
			<img src="button5.jpg" width="275" height="200">
			<p class = "picturep">Like Wil</p>
			</button>
			
			<button class="bigbutton" name="command" value="LIST,annamimi">
			<img src="66.jpg" width="275" height="200">
			<p class = "picturep">Anna and Mimi</p>
			</button>
			
			<button class="bigbutton" name="command" value="LIST,ingroup">
			<img src="button7.jpg" width="275" height="200">
			<p class = "picturep">Group of Dudes</p>
			</button>
			
			<button class="bigbutton" name="command" value="LIST,plusfullname">
			<img src="button8.jpg" width="275" height="200">
			<p class = "picturep">Full Names</p>
			</button>
		</form>
		</div>
		
		<div id="Customer1">
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
			
    </body>
</html>