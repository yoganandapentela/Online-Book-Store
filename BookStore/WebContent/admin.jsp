<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <title>Login Form</title>
 <style>

body
{
    margin: 0;
    padding: 0;
    background-color:#6abadeba;
    font-family: 'Arial';
}
.login{
        width: 382px;
        overflow: hidden;
        margin: auto;
        margin: 20 0 0 450px;
        padding: 80px;
        background: #23463f;
        border-radius: 15px ;

}
h2{
    text-align: center;
    color: #277582;
    padding: 20px;
}
label{
    color: #08ffd1;
    font-size: 17px;
}
#uname{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
}
#Pass{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;

}
#log{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 17px;
    padding-left: 7px;
    color: blue;


}
span{
    color: white;
    font-size: 17px;
}
a{
    float: right;
    background-color: grey;
}
</style>
<h2 style="background-color:blanchedalmond;color:yellowgreen;width:100%;">ONLINE BOOK STORE</h2>

</head>


<body>
<center><h3>Login</h3></center><br>
    <div class="login">
    <form id="login" method="post" action="admin">
        <label><b>User Name
        </b>
        </label>
        <input type="text" name="uname" id="uname" placeholder="Username">
        <br><br>
        <label><b>Password
        </b>
        </label>
        <input type="Password" name="pass" id="Pass" placeholder="Password">
        <br><br>
        <button type="submit" id="log">Login</button>
        <br><br>
        <input type="checkbox" id="check">
        <span>Remember me</span>
        <br><br>
        <input type="reset" value="Reset"><br><br>
         <a href="#">Forgot Password</a>
        <h4 style="color: crimson;"><a href="register.jsp" >New User Register Here</a></h4>
    </form>
</div>
</body>

</html>