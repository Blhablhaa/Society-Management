<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

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
 

  <title>Event page</title>  

  <link href="./main.a3f694c0.css" rel="stylesheet" />

  <style>
      .complaint_form-container div,
        .complaint_form-container form,
        .complaint_form-container input,
        .complaint_form-container select,
        .complaint_form-container p {
        padding: 0;
        margin: 0;
        outline: none;
        font-family: Roboto, Arial, sans-serif;
        font-size: 14px;
        color: #666;
        line-height: 22px;
        }
        .complaint_form-container p {
        font-size: 16px;
        }
        .complaint_form-container h1 {
        margin: 15px 0;
        font-weight: 400;
        }
        .complaint_form-container .testbox {
        display: flex;
        justify-content: center;
        align-items: center;
        height: inherit;
        padding: 3px;
        }
        .complaint_form-container form {
        width: 100%;
        padding: 20px;
        background: #fff;
        box-shadow: 0 2px 5px #ccc;
        }
        .complaint_form-container input,
        .complaint_form-container select,
        .complaint_form-container textarea {
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        }
        .complaint_form-container input {
        width: calc(100% - 10px);
        padding: 5px;
        }
        .complaint_form-container select {
        width: 100%;
        padding: 7px 0;
        background: transparent;
        }
        .complaint_form-container textarea {
        width: calc(100% - 6px);
        }
        .complaint_form-container .item {
        position: relative;
        margin: 10px 0;
        }
        .complaint_form-container .item:hover p,
        .complaint_form-container .item:hover i {
        color: #095484;
        }
        .complaint_form-container input:hover,
        .complaint_form-container select:hover,
        .complaint_form-container textarea:hover {
        box-shadow: 0 0 5px 0 #095484;
        }
        .complaint_form-container .btn-block {
        margin-top: 20px;
        text-align: center;
        }
        .complaint_form-container button {
        width: 150px;
        padding: 10px;
        border: none;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
        background-color: #095484;
        font-size: 16px;
        color: #fff;
        cursor: pointer;
        }
        .complaint_form-container button:hover {
         background-color: #0666a3;
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
          <c:if test="${!user.role.equals('ADMIN')}">
          	<li><a href="/complaint" title="">Complaints</a></li>
          </c:if>
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
                        <div class="complaint_form-container">
                            <form:form modelAttribute="event" class="complaint_form"  action="/event_page"  method="post">
                                <h1 class="highlighted-text">Create new event</h1>
                                <div class="info">
                                  
                                  <form:input path="event_name" placeholder="Event Name" />
                                  
                                  <p>Event date</p>
                                  <form:input type="date" path="date" placeholder="select date of event" />
                                  <p>Event time</p>
                                  <form:input type="time" path="time" placeholder="select time of event" />
                                </div>
                                <p>Message</p>
                                <div>
                                  <form:input path="message"  />
                                </div>
                                <button type="submit" >Create event</button>
                            </form:form>
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