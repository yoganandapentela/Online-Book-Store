<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>
</head>

<style>

body
{
    margin: 0;
    padding: 0;
    font-family: 'Arial';
    background-color:#f5fffa;
    
}
.login{
        width: 400px;
        overflow: hidden;
        margin: auto;
        margin: 20 0 0 450px;
        padding: 80px;
        background: yellow;
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
#bookid{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px
}
#bookname{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
}
#author{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;

}
#type{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 17px;
    padding-left: 7px;
    color: blue;


}
#edition{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px
    }
    
#price{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px
    }
      
}
span{
    color: white;
    font-size: 17px;
}
a{
    float: right;
    background-color: grey;
}

#register{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 17px;
    padding-left: 7px;
    color: blue;


}
</style>

<body>

<form action="bookregister" method="post">
<div class="login">
    <h1>Add U r Book!!</h1>
   
    <hr>

    <label for="bookid"><b>Bookid</b></label><br>
    <input type="text" placeholder="bookid" name="bookid" id="bookid" required><br><br>
    
    <label for="bookname"><b>Bookname</b></label><br>
    <input type="text" placeholder="bookname" name="bookname" id="bookname" required><br><br>

    <label for="author"><b>Author</b></label><br>
    <input type="text" placeholder="author" name="author" id="author" required><br><br>
    
    <br>
    <label for="type">Type</label>
    <select name="type" id="type"  required>
    <option value="">Select type</option>
    <option value="new">New</option>
    <option value="old">Old</option>
    </select>
    
    <label for="edition"><b>Edition</b></label><br>
    <input type="number"  name="edition" id="edition" required><br><br>
    
     <label for="price"><b>Price</b></label><br>
    <input type="number"  name="price" id="price" required><br><br>
    
    
        <input type="checkbox" id="check">
    <p>By creating an account you agree to our <span><a href="#"></span>Terms & Privacy</a>.</p>

    <button type="submit" id="register" class="registerbtn" value="save">Register</button>
  
  
  
    
  
</form>



</body>
</html>