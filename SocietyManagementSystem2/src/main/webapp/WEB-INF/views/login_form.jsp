<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="IE=edge" http-equiv="X-UA-Compatible">
  <meta content="width=device-width,initial-scale=1" name="viewport">
  <meta content="description" name="description">
  <meta name="google" content="notranslate" />
  <meta content="Mashup templates have been developped by Orson.io team" name="author">

  <!-- Disable tap highlight on IE -->
  <meta name="msapplication-tap-highlight" content="no">
  
  <link href="./assets/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="./assets/favicon.ico" rel="icon">
  <link href="<c:url value="/css/style.css" />" rel="stylesheet">
 

  <title>Login page</title>  

  <link href="./main.a3f694c0.css" rel="stylesheet" />

  <style>
     /* Based on a Dribbble shot by Andreas Storm
   http://dribbble.com/shots/1127916-Sign-in
*/

*{
  -webkit-box-sizing:border-box;
  -moz-box-sizing:border-box;
  box-sizing:border-box;
}
body{
  background: white;
  font-family:Arial;
  font-size:12px;
  color:#C4BCB0;
}
input[type="text"],
input[type="password"]{
  background:#EAE6E1;
  border:0;
  font-weight:bold;
  padding:10px;
  border-radius:3px;
  width:100%;
  margin:5px 0;
  outline:medium none;
  color:#838383;
}
input[type="checkbox"]{
  -webkit-appearance:none;
  width:10px;
  height:10px;
  position:relative;
  outline:medium none;
  margin-right:10px;
}
input[type="checkbox"]::before{
  width:9px;
  height:9px;
  content:"";
  display:block;
  border:3px solid #C4BCB0;
  border-radius: 9px;
  position:absolute;
}
input[type="checkbox"]:checked::after{
  width:5px;
  height:5px;
  content:"";
  display:block;
  background: #e27e0b;
  border-radius: 5px;
  position:absolute;
  left:5px;
  top:5px;
}
input[type="submit"]{
  display:block;
  padding:10px;
  background:#50BFA4;
  border:0;
  border-radius:3px;
  font-weight:bold;
  width:100%;
  color:#fff;
  cursor:pointer;
  -webkit-transition:all 0.3s;
  -moz-transition:all 0.3s;
  transition:all 0.3s;
}
input[type="submit"]:hover{
  background:#58CCB0;
}
.main-form{
  width:350px;
  margin: 100px auto;
  padding:50px;
  border: 1px solid rgba(0,0,0,0.1);
  -webkit-box-shadow:0 1px 2px rgba(0,0,0,0.2);
  background:#fff;
}
.logo{
  background:#50BFA4;
  width:40px;
  height:40px;
  display:block;
  margin:0 auto 30px;
  border-top-left-radius:20px;
  border-top-right-radius:20px;
  border-bottom-left-radius:20px;
  position:relative;
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  transform: rotate(45deg);
}
.logo::before{
  width:14px;
  height:14px;
  display:block;
  border:5px solid #F7F5F2;
  content:"";
  position:absolute;
  border-radius:14px;
  top:8px;
  left:8px;
}
.main-form > h2{
  font-weight: bold;
  text-align: center
}
.main-form > label{
  display:block;
  margin:10px 0 15px;
  line-height:15px;
  cursor:pointer;
}
.main-form > div{
  margin-top:20px;
}
a{
  color:#C4BCB0;
  text-decoration:none;
}
.main-form > a{
  font-size:11px;
  display:block;
  text-align:center;
  margin:10px 0;
}
.main-form > div >a:first-child{
  font-weight:bold;
}
.main-form > div >a:nth-child(2){
  border:1px solid #3DA087;
  display:inline-block;
  border-radius:3px;
  color:#3DA087;
  font-weight:bold;
  padding:7px 15px;
  margin-left:28px;
  -webkit-transition:all 0.3s;
  -moz-transition:all 0.3s;
  transition:all 0.3s;
}
.main-form > div >a:nth-child(2):hover{
  background:#3DA087;
  color:#fff;
}
  </style>
</head>

<body>

 <!-- Add your content of header -->
<header>
  <nav class="navbar  navbar-fixed-top navbar-default">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle uarr collapsed" data-toggle="collapse" data-target="#navbar-collapse-uarr">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="./index.html" title="">
          <img src="./assets/images/mashuptemplate.svg" class="navbar-logo-img" alt="">
        </a>
      </div>

      <div class="collapse navbar-collapse" id="navbar-collapse-uarr">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="/" title="" class="active">Home</a></li>
          <li><a href="/Registration" title="">Registration</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<div class="main-form">
	
	<form:form action="/login" method="post">
  		<h2>Login Form</h2>
    	<i class="logo"></i>
    	<input type="text" placeholder="Email" value="" name="email" required>
    	<input type="password" placeholder="Password" value="" name="password" required>
    	<input type="submit" value="Sign in">
    	<div>
      		<a href="/register" title="">Don't have an account?Sign Up</a>
    	</div>
    </form:form>
  </div>


<footer>
    <div class="section-container footer-container">
        <div class="container">
            <div class="row">
                    <div class="col-md-4">
                        <h3>About us</h3>
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <h5>
                             <p>This website is made and managed by <b><i>Neeraj, Mayank, Shubham, Mukul & Arpit</i></b></p>
                        </h5>
                    </div>
            </div>
        </div>
    </div>
</footer>

<script>
    document.addEventListener("DOMContentLoaded", function (event) {
      navActivePage();
    });
  </script>
  
  <script type="text/javascript" src="./main.41beeca9.js"></script></body>
</html>