<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>後台管理|首頁</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/manger.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/index.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<!--Header開始-->
	<div class="stay-top">
	    <ul class="shipping">
			<li>
          <a href="#" onclick="showDialog();" class="right-line A" >SIGN IN</a>
      </li> 
		<li>

            <a href="logout.jsp" class="cart">
            <img src="../assets/images/signout.png"></a>
        </li></ul>
		
	<header class="main-header">
	    <div class="container">
		    <a href="manager.jsp" class="logo"><img src="../assets/images/logo.jpg"></a>
		        <ul class="main-nav">
		    <li>
			    <a href="addmanager.jsp" class="main-nav-a"><img src="../assets/images/plus.jpg" alt="新增圖示">新增商品</a>
	     	    <div class="aboutus">
			</li>
		    <li>
		        <a href="editmanager.jsp" class="inner main-nav-a sh"><img src="../assets/images/edit.png" alt="編輯圖示">編輯商品</a>
			    <div class="editt">
            </li>
            <li>
		        <a href="#" class="inner main-nav-a sh"><img src="../assets/images/inquire.png" alt="查詢圖示">查詢一覽</a>
			    <ul class="inquire">
                <li><a href="inquiremanager.jsp">訂單查詢</a></li>
				<li><a href="messagemanager.jsp">留言查詢</a></li>
		    </ul></li>
		    <li>
				<a href="deletemanager.jsp" class="inner2 main-nav-a"><img src="../assets/images/delete.png" alt="刪除圖示">刪除商品</a>  
            </li>
	    </div>
    </header>
</div>	
<!--Header結束-->
<!--登入介面彈跳的部分開始-->

<div onclick="closescr();" class="dialog" id="dialog">
        <div class="close"><a href="#" onclick="closeDialog();"><img src="assets/images/cross.png"></a></div>
        <div class="frama">
        <div class="login">
            <form class="form" action="check.jsp" method="POST"> 
            <h2>會員登入</h2>
            <div class="group">
                <label for="user-id">帳號</label>
                <input type="textmodal" placeholder="&ensp;Email / 使用者名稱" onKeyUp="value=value.replace(/[\W]/g,'')" name="userid" id="userid" maxlength="10">
            </div>
            <div class="group">
                <label for="user-password">密碼</label>
				<input type="password" placeholder="&ensp;輸入密碼" onKeyUp="value=value.replace(/[\W]/g,'')" name="userpassword" id="userpassword" maxlength="10">
            </div>
            <div class="btn-group">
                <button class="btn" type="submit">登入</button>
				<button class="btn" onclick="window.open('password.jsp')">忘記密碼</button>
            </div>
            <div class="btn-group1">
                <button class="btn2" onclick="window.open('addaccount.jsp')" >沒有帳號 ? 點擊註冊</button>
            </div>
                </form>
            </div>     
        </div>
    </div>

<script>
var dialog,dialog1;
	window.onload=function(){
		dialog=document.getElementById("dialog");
	};
	function showDialog(){
		dialog.style.display="block";
	};
	function closeDialog(){
		dialog.style.display="none";
	};
</script>
<!--登入介面彈跳的部分結束-->
<!--管理員介面開始-->
 <div class="manger">
    <div class="login1">
        <form class="formmanger"> 
            <h2><center>管理員介面，僅可使用 <i>「管理員功能」</i><br><br></center>如欲瀏覽畫面，
                請 <i>「切換帳號」</i> 或 <i>「登出」</i> 查看前台畫面</h2>
            
        </form>
    </div>     
</div>
<!--管理員介面結束-->
<br><br><br>
<%
			String sql="select * from  counter ";
			ResultSet rs =con.createStatement().executeQuery(sql);
			int x=1;	
				
				while(rs.next()){
				    x=rs.getInt("People_Number");
					
				}
			if(session.isNew())

			{
			x++;//計數器加1
			}

			sql="update counter set People_Number="+x ;
			con.createStatement().execute(sql);
		%>
<!--footer開始-->
<footer>
	<p class="amount">網站瀏覽人數：&nbsp;<%out.print(x);%></p>
	<p></p>
	<p>+886-987987987&nbsp;|&nbsp;<a href="Laviacampesina@gmail.com">Laviacampesina@gmail.com</a></p>
	<p>© 2020 by TzuYen, TzuYing,YaXuan,MinJie,MangCheong</p>
</footer>
<!--footer結束-->

<!--置頂開始-->
<div class="updiv">
	<a href="#top"><img src="../assets/images/up.png" class="uppic"></a>
</div> 
<!--置頂結束-->
</body>
</html>