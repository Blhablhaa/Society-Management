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
 

  <title>Admin page</title>  

  <link href="./main.a3f694c0.css" rel="stylesheet" />

  <style>
      .link-btn-container {
          min-height: 48vh; 
          display: flex;
          flex-direction: column;
          margin : 5px 0px;
      }

      .link-btn {
          margin : 8px 0px;
          padding: 5px;
          border : 1px solid black; 
          text-decoration: none;
          color:white;
          font-weight: 600;
          background-color: #20bf55;
          background-image: linear-gradient(315deg, #20bf55 0%, #01baef 74%);
      }

      .link-btn:hover, .link-btn:visited, .link-btn:active {
          text-decoration: none;
          color: white;
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
          <!-- add class of "active" to list items to get a highlited style
              for active page
          -->
          <li><a href="/" title="">Home</a></li>
          <li><a href="/event_page" title="">Event</a></li>
          <li><a href="/logout" title="">Logout</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<div class="section-container border-section-container">
    <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6 section-container-spacer">
                    <div class="text-center">
                        <h2>Welcome admin</h2>
                        <div class="link-btn-container">
                            <a href="/view_all_complaints_page" class="link-btn">View Complaints</a>
                            <a href="/view_all_visitors_page" class="link-btn">View Vistors</a>
                            <a href="/view_all_events_page" class="link-btn">View Events</a>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>

<footer>
    <div class="section-container footer-container">
        <div class="container">
            <div class="row">
                    <div class="col-md-4">
                        <h3 class="highlighted-text">About us</h3>
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