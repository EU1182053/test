<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
</head>
<body>
    <section>
        <h1>Registration Form</h1>
        <!--  in action attribute put path of servlet bydefault is get request -->
        <form action="UserServlet" method="post">
            <!-- text field-->
            <label for="username">User Name: </label>
            <input type="text" name="username"  required>
            
            <label for="name">Name: </label>
            <input type="text" name="name"  required>
            
            <label for="email">Email Id: </label>
            <input type="text" name="email"  required>
            
            <label for="contact">Contact No: </label>
            <input type="number" name="contact"  required>
            
            <label for="address">Address: </label>
            <textarea type="text" name="address"  required></textarea>
            
            <label for="pass">Set Password: </label>
            <input type="text" name="password" id="pass" pattern="(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}">
            
            <label for="confirmpass">Confirm Password: </label>
            <input type="password"  id="confirmpass" required>
          
            
            <input type="submit" value="REGISTER">
            <input type="reset">
            <input type="hidden" name="act" value="registerAction"> 
        </form>
    </section>
</body>
</html>