<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Complaint</title>
<link href="<c:url value="/css/style.css" />" rel="stylesheet">
</head>

<style>
      .complaints-container_link {
        color: black;
      }
      .complaints-container_link:hover, 
      .complaints-container_link:active,
      .complaints-container_link:visited {
        text-decoration: none;
        color: black;
      }

      .complaints-container_link:hover > complaint-info {
        background: gray;
        color: white;
      }
      .complaints-container {
        margin: 5px;
        display: flex;
        flex-direction: column;
        align-items: space-evenly;
        text-align: center;
        border: 1px solid black;
      }

       .complaint-info > span {
        width: 25%;
        text-align: center;
       }

      .complaint-info_head {
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
                <div class="col-md-2"></div>
                <div class="col-sm-12 col-md-8 section-container-spacer">
                    <div class="text-center">
                    	<c:if test="${complaint == null}">
                    		<h3>Cannot fetch complaint information</h3>
                    	</c:if>
                    	<c:if test="${complaint != null}">
                    	
                        <h2>Complaint information</h2>
                        <!--The block below this is for injecting values of complaints info-->
                        <form action="#" method="PUT">
                          <div class="complaints-container">
                              <div class="complaint-info">
                                  <div class="info-body">
                                        <span><b>Complaint no. :-</b></span>
                                        <span><i>${complaint.complaintid}</i></span>
                                  </div>
                              </div>
                              <div class="complaint-info">
                                  <div class="info-body">
                                        <span><b>Complainant's name :-</b></span>
                                        <span><i>${complaint.name}</i></span>
                                 </div>
                              </div>
                              <div class="complaint-info">
                                  <div class="info-body">
                                        <span><b>Contact number :-</b></span>
                                        <span><i>${complaint.phone}</i></span>
                                  </div>
                               </div>
                              <div class="complaint-info">
                                  <div class="info-body">
                                        <span><b>Email :-</b></span>
                                        <span><i>${complaint.email}</i></span>
                                  </div>
                              </div>
                              <div class="complaint-info">
                                <div class="info-body">
                                      <span><b>Complaint :-</b></span>
                                      <span><i>${complaint.complaintBody}</i></span>
                                </div>
                            </div>
                              <div class="complaint-info">
                                  <div class="info-body">
                                        <span><b>Complaint status :-</b></span>
                                        <span>
                                            <select name="status">
                                                <option value="RESOLVED">Resolved</option>
                                            </select>
                                        </span>
                                  </div>
                              </div>
                          </div>
                          <button type="submit">Submit</button>
                        </form>
                        </c:if>
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
  
  <script type="text/javascript" src="./main.41beeca9.js"></script>
</body>
</html>