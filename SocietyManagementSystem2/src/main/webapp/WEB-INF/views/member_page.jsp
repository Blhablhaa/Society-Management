<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
 

  <title>Member page</title>  

  <link href="./main.a3f694c0.css" rel="stylesheet" />

  <style>
  	  .testbox {
  	  	width: 55%;
  	  	margin: auto;
  	  	min-height: 63vh;
  	  }
      .users-container_link {
        color: black;
      }
      .users-container_link:hover, 
      .users-container_link:active,
      .users-container_link:visited {
        text-decoration: none;
        color: black;
      }

      .users-container_link:hover > user-info {
        background: gray;
        color: white;
      }
      .users-container {
        margin: 5px;
        display: flex;
        flex-direction: column;
        align-items: space-evenly;
        text-align: center;
        border: 1px solid black;
      }

       .user-info > span {
        width: 25%;
        text-align: center;
       }

      .user-info_head {
        margin: 10px;
        font-weight: 600;
      }

      .info-body {
          display: flex;
          flex-wrap: wrap;
          justify-content: space-between;
          border: 1px solid black;
      }

      .info-body > span {
          flex: 1 1 100px;
          border-right: 1px solid black;
      }

      .highlighted-text {
            color: #8b62ff;
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
          <li><a href="/member" title="" class="active">Home</a></li>
          <li><a href="/event_page" title="">Event</a></li>
          <li><a href="/complaint" title="">Complaint</a></li>
          <li><a href="/logout" title="">Logout</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<div class="testbox">
      <h2>user information</h2>
                        <!--The block below this is for injecting values of users info-->
                        <form>
                          <div class="users-container">
                              <div class="user-info">
                                  <div class="info-body">
                                        <span><b>Complainant name :-</b></span>
                                        <span><i>${sessionScope.user.name}</i></span>
                                 </div>
                              </div>
                              <div class="user-info">
                                  <div class="info-body">
                                        <span><b>Contact number :-</b></span>
                                        <span><i>${sessionScope.user.phone}</i></span>
                                  </div>
                               </div>
                              <div class="user-info">
                                  <div class="info-body">
                                        <span><b>Email :-</b></span>
                                        <span><i>${sessionScope.user.email}</i></span>
                                  </div>
                              </div>
                          </div>
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

</body>
<script>
    document.addEventListener("DOMContentLoaded", function (event) {
      navActivePage();
    });
  </script>
  
  <script type="text/javascript" src="./main.41beeca9.js"></script></body>
</html>