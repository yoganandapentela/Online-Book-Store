<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix='sql'%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Store</title>

<style>
#div{
background-color:yellow;
height:50px;
}





#table{
height:100px;
width:80%;
backgound-color:#fff8dc;

}
#row{
text-align:center;
}

#logout {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    background-color: #c0392b;
    border-radius: 5px;
    text-decoration: none;
    position: absolute;
    top: 10px;
    right: 10px;
    background-color: #e74c3c;
    color: #fff;
  }
  
  #admin {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    background-color: #6b8e23;
    border-radius: 5px;
    text-decoration: none;
    position: absolute;
    top: 10px;
    left: 250px;
    
    color: #fff;
  }
  #seller {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    background-color:  #6b8e23;
    border-radius: 5px;
    text-decoration: none;
    position: absolute;
    top: 10px;
    left: 150px;
    
    color: #fff;
  }
  
  #contact{
  
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    background-color:  #6b8e23;
    border-radius: 5px;
    text-decoration: none;
    position: absolute;
    top: 10px;
    left: 10px;
    
    color: #fff;
  }
  
  #buy {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    background-color: #c0392b;
    border-radius: 5px;
    text-decoration: none;
    position: absolute;
    bottom: 10px;
    right: 10px;
    background-color: #6b8e23;
    color: #fff;
  }
  
#body{
background-color: honeydew;

}
#mar{
position:absolute;
left:20px;
right:20px;
overflow:hiddeen;
width:85%;
direction:"right";
font-size:20px;

}

</style>

</head>
<body id="body">
<div id="div">

<marquee id="mar">Flash.. Java Core Books are at 50% off </marquee>

<form   action="addingbook.jsp">
<input  type="submit" id="seller" value="Seller">
</form>

<form   action="admin.jsp">
<input type="submit" id="admin" value="Admin">
</form>

<form action="contact.jsp">
<input  type="submit" id="contact" value="Contact us">
</form>
</div>

<form method="post" action="BookStoreValidation">

    <sql:setDataSource url="jdbc:mysql:///bookstore" user="root"
		password="root123" driver="com.mysql.cj.jdbc.Driver" var="dataSource" />
	<sql:query var="result" dataSource="${dataSource}">
			SELECT * from books
	</sql:query>
	<h1 style='color:green; text-align: center'>Trending Books are here..Hurry Up!!</h1>
	<table id="table" border='1' align="center">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Author</th>
			<th>Type</th>
			<th>Edition</th>
			<th>Price</th>
			<th>Buy</th>
		
		</tr>
		<c:forEach var="row" items="${result.rows}">
		<tr id="row">
		
		<td>${row.id}</td>
		<td>${row.name}</td>
		<td>${row.author}</td>
		<td>${row.type}</td>
		<td>${row.edition}</td>
		<td>${row.price}</td>
		<td><input type="checkbox" name="item${row.id}" value="${row.price}"></td>
		
		</tr>
		</c:forEach>
		</table>
		<br>
		<input type="submit" id="buy"value="BUY">
		
</form>
        <form  action="logout" method="post">
        <input  type="submit" id="logout" value="logout">
         </form>


</body>
</html>


