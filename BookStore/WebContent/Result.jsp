<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<style>
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
  h2{
 font-size: 70px;
    font-weight: bold;
    color:#c0392b;
 left-padding:40%;
 
 text-align:"right";
 }
 
 h3{
 font-size: 50px;
    font-weight: bold;
    color:green;
 
 
 text-align:"center";
 }
 #shop{
 font-size: 50px;
    font-weight: bold;
    color:blue;
 
 
 text-align:"center";
 }
 #body{
 background-color:#e0ffff;
 
 } 
 

</style>
<body id="body">
<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thanks for Shopping &nbsp; </h2>
 <h3 id="shop">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your final bill amount is::${sum} rupees</h3>
<h3>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;Happy Learning....&#9786;</h3>
<br>
<br>
       
        
        <form  action="logout" method="post">
        <input  type="submit" id="logout" value="logout">
         </form>
</body>
</html>