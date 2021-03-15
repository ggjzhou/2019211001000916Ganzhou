<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset = "utf-8">
    <title>Title</title>
</head>
<style ></style>
<body style="background-color: #fcefa1">
<h1 style="text-align:center;color:#800000" >New User Registration</br>
<form  style="text-align:center" method="post">
                <!--<input type="text" name="userid" value="" placeholder="登录名"/>-->
                <input type="text" name="user" value="Username"
                       onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
                       onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999;background: #EAEAAE" /><br/><br/>


                <input type="password" name="pw" value="password" placeholder="password"  minlength="8" style="color:#999999;background: #EAEAAE" /><br/><br/>


                <input type="Email" name="Em" value="Email"
                       onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
                       onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999;background: #EAEAAE" /><br/><br/>


                <input type="radio" name="sex"  id="man1" value="1" />
                <label for="man1">Male</label>
                <input type="radio" name="sex" id="man2" value="1" />
                <label for="man2">Female</label><br/><br/>
                <input type="date" name="da" value="date of birth"
                       onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
                       onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999;background: #EAEAAE" />
        <tr style="text-align: center">
            <td height="35" colspan="2"><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" name="Submit" value="提交" /> <input type="submit" name="Submit2" value="重置" />

            </label>
                <label>
                </label>
            </td>
        </tr>


</form>
</h1>
</body>
</html>