<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Sign Up Form</title>
        <link type="text/css" rel="stylesheet" href="css/style2.css">
    </head>
    <body>
        
        <div class="container">
            <h2>Customer Sign Up</h2>
            <form action="CustomerController" method="GET">
            <input type="hidden" name="command" value="ADD" />
                <input type="text" placeholder="First Name" name="firstName"> <br><br>
                <input type="text" placeholder="Last Name" name="lastName"> <br><br>
                <input type="text" placeholder="Address" name="address"><br><br>
                <input class="save" type="submit" value="Save"/>
            </form>
            <a class="link" href="CustomerController">Back to List</a>
        </div>
        
    </body>
</html>