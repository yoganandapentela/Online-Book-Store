<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin select</title>
<style>

#add {
    display: inline-block;
    padding: 20px 20px;
    font-size: 40px;
    font-weight: bold;
    color: #fff;
    background-color: #6b8e23;
    border-radius: 5px;
    text-decoration: none;
    position: absolute;
    top: 100px;
    left: 600px;
    
    color: #fff;
  }
#dele{
 display: inline-block;
    padding: 20px 20px;
    font-size: 40px;
    font-weight: bold;
    color: #fff;
    background-color: #6b8e23;
    border-radius: 5px;
    text-decoration: none;
    position: absolute;
    top: 300px;
    left: 570px;
    
    color: #fff;
}

#add{

table{
    margin:auto;
}

#body{
background-color:#ffefd5;
}
</style>
</head>
<body id="body">

<form   action="addingbook.jsp">
<input type="submit" id="add" value="ADD BOOK">


</form>

<form action="deletebook.jsp" >
<input type="submit" id="dele" value="DELETE BOOK">

</form>

</body>
</html>