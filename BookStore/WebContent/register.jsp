<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>

<style>

body
{
    margin: 0;
    padding: 0;
    background-color:#6abadeba;
    font-family: 'Arial';
    background-color:#ffefd5;
   
   
    
}
.login{
        width: 400px;
        overflow: hidden;
        margin: auto;
        margin: 20 0 0 450px;
        padding: 80px;
        background: pink;
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
#email{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px
}
#username{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
}
#password{
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
#phone{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px
    }
    
#state{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px
    }
#address{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px       
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

<form action=valid method="post">
<div class="login">
    <h1>Register</h1>
   
    <hr>

    <label for="email"><b>Email</b></label><br>
    <input type="text" placeholder="Enter Email" name="email" id="email" required><br><br>
    
    <label for="username"><b>Username</b></label><br>
    <input type="text" placeholder="Username" name="username" id="username" required><br><br>

    <label for="password"><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="password" id="password" required><br><br>
    
    <label for="phone"><b>Mobileno</b></label><br>
    <input type="text"  name="phone" id="phone" required><br><br>
    
    <br>
    <label for="state">State</label>
    <select name="state" id="state"  required>
    <option value="">Select state</option>
    <option value="AN">Andaman and Nicobar Islands</option>
    <option value="AP">Andhra Pradesh</option>
    <option value="AR">Arunachal Pradesh</option>
    <option value="AS">Assam</option>
    <option value="BR">Bihar</option>
    <option value="CH">Chandigarh</option>
    <option value="CT">Chhattisgarh</option>
    <option value="DN">Dadra and Nagar Haveli</option>
    <option value="DD">Daman and Diu</option>
    <option value="DL">Delhi</option>
    <option value="GA">Goa</option>
    <option value="GJ">Gujarat</option>
    <option value="HR">Haryana</option>
    <option value="HP">Himachal Pradesh</option>
    <option value="JK">Jammu and Kashmir</option>
    <option value="JH">Jharkhand</option>
    <option value="KA">Karnataka</option>
    <option value="KL">Kerala</option>
    <option value="LA">Ladakh</option>
    <option value="LD">Lakshadweep</option>
    <option value="MP">Madhya Pradesh</option>
    <option value="MH">Maharashtra</option>
    <option value="MN">Manipur</option>
    <option value="ML">Meghalaya</option>
    <option value="MZ">Mizoram</option>
    <option value="NL">Nagaland</option>
    <option value="OR">Odisha</option>
    <option value="PY">Puducherry</option>
    <option value="PB">Punjab</option>
    <option value="RJ">Rajasthan</option>
    <option value="SK">Sikkim</option>
    <option value="TN">Tamil Nadu</option>
    <option value="TG">Telangana</option>
    <option value="TR">Tripura</option>
    <option value="UP">Uttar Pradesh</option>
    <option value="UT">Uttarakhand</option>
    <option value="WB">West Bengal</option>
</select>
    <br><br>
    <br>
    <label form="address">Address</label><br>
    <textarea rows="4" cols="50" name="address" id="address"  required>
</textarea>
    <br>
    <input type="checkbox" id="check">
    <p>By creating an account you agree to our <span><a href="#"></span>Terms & Privacy</a>.</p>

    <button type="submit" id="register" class="registerbtn" value="save">Register</button>
  
  
  
    <p>Already have an account? </p>
    <a href="welcome.jsp">Sign in</a>
  
</form>



</body>
</html>