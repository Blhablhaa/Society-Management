<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Complaints page</title>
</head>
 <link href="<c:url value="/css/style.css" />" rel="stylesheet">
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
        justify-content: space-around;
        align-items: center;
        text-align: center;
        border: 1px solid black;
      }

      .complaint-info {
        margin: 5px;
        padding: 5px;
       }

       .complaint-info > span {
        width: 25%;
        text-align: center;
       }

      .complaint-info_head {
        margin: 10px;
        font-weight: 600;
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
          <li><a href="#" title="">Home</a></li>
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
                        <h2>Complaints list</h2>
                        	<c:if test="${complaintlist == null}">
                        		<h3>No visitor to show</h3>
                        	</c:if>
                        	
                        	<c:if test="${complaintlist != null}">
                        		
                          		<div class="complaints-container">
                             		<div class="complaint-info complaint-info_head">Complaint No.</div>
                              		<div class="complaint-info complaint-info_head">Complainant's name</div>
                              		<div class="complaint-info complaint-info_head">Complainant's house no.</div>
                              		<div class="complaint-info complaint-info_head">Complaint status</div>
                          		</div>
                        		<!--The block below this is for injecting values of complaints info-->
                        		<c:forEach var="complaint" items="${complaintlist}">
                        			<a href="/view_complaint_page?cid=${complaint.complaintid}" class="complaints-container_link">
                          				<div class="complaints-container">
                              				<div class="complaint-info">${complaint.complaintid}</div>
                              				<div class="complaint-info">${complaint.name}</div>
                              				<div class="complaint-info">${complaint.house}</div>
                              				<div class="complaint-info">${complaint.status}</div>
                              				<div class="complaint-info">${complaint.complaintBody}</div>
                          				</div>
                        		</a>
                        		</c:forEach>
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