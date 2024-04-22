<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All events</title>
<link href="<c:url value="/css/style.css" />" rel="stylesheet">
<style>
      .events-container {
        margin: 5px;
        display: flex;
        justify-content: space-around;
        align-items: center;
        text-align: center;
        border: 1px solid black;
      }

      .event-info {
        margin: 5px;
        padding: 5px;
        width: 25%;
       }

      .event-info_head {
        margin: 10px;
        font-weight: 600;
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
                <div class="col-md-2"></div>
                <div class="col-md-8 section-container-spacer">
                    <div class="text-center">
                        <h2>Events list</h2>
                        <c:if test="${eventlist == null}">
                        	<h3>No events to show</h3>
                        </c:if>
                        <c:if test="${eventlist != null}">
                          <div class="events-container">
                              <div class="event-info event-info_head">Event</div>
                              <div class="event-info event-info_head">House number</div>
                              <div class="event-info event-info_head">Phone number</div>
                              <div class="event-info event-info_head">Date</div>
                              <div class="event-info event-info_head">Time</div>
                          </div>
                        <!--The block below this is for injecting values of event info-->
                        <c:forEach var="event" items="${eventlist}">
                          <div class="events-container">
                              <div class="event-info">${event.event_name}</div>
                              <div class="event-info">${event.house}</div>
                              <div class="event-info">${event.phone}</div>
                              <div class="event-info">${event.date}</div>
                              <div class="event-info">${event.time}</div>
                          </div>
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