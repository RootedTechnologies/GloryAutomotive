<%--
  Created by IntelliJ IDEA.
  User: Cody
  Date: 11/6/2014
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Rowlett Glory Automotive</title>

  <link type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"/>
  <link type="text/css" href="${pageContext.request.contextPath}/resources/css/site.min.css" rel="stylesheet"/>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand hidden" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">HOME</a><div class="navbar-underline"></div></li>
        <li><a href="#">SERVICES</a><div class="navbar-underline"></div></li>
        <li><a href="#">LOCATION</a><div class="navbar-underline"></div></li>
        <li><a href="#">CONTACT US</a><div class="navbar-underline"></div></li>
        <li><a href="#">WARRANTY</a><div class="navbar-underline"></div></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
  <div class="container">
    ${message}
    <div class="row">
      <div class="col-xs-12 color-divider version-one"></div>
      <div class="col-xs-12 info-section one-stop">
        <div class="subtitle">
          Your one stop automotive repair in Rowlett, Texas
        </div>
        <div class="description">
          <p>
            We’re your one stop shop for all your automotive repair needs in Rowlett, Texas. From brakes, to fuel injectors and from water pumps to check-engine lights, having problems with Ford or GM instrument clusters, we can HELP. Rowlett Glory Automotive Keeps Your Car on the Road with our Auto Repair & and Maintenance Services.
          </p>
          <p>
            Not only do we take the stress out of your automotive repairs, but we’ll help you prolong the life of your vehicle with our auto repair services from Rowlett Glory Automotive in Rowlett, Texas.
          </p>
          <p>
            Our mechanic will offer full-service auto repair for vehicles of all kinds. We’ll keep your car running smooth.
          </p>
          <div class="subtitle">
            Honest Auto Repair
          </div>
          <div class="description">
            <p>
              Gregory Spies, the owner of Rowlett Glory Automotive, has more than 35 years of experience in the auto repair industry — including 15 years of Ford certified training.
            </p>
            <p>
              He started this business because he wanted a place were people can come and get a honest deal and up front answers for auto repair needs.
            </p>
          </div>
        </div>
      </div>
      <div class="col-xs-12 info-section full-service">
        <div class="row subtitle">
          <div class="col-xs-12">
            Full-Service Repairs
          </div>
        </div>
        <div class="row description">
          <div class="col-xs-12">
            When you come to Rowlett Glory Automotive, we provide everything from basic tune-ups to standard transmission clutch work to keep your car in peak condition.
          </div>
          <div class="col-xs-12">
            Auto Diagnostics & Repairs:
          </div>
          <div class="col-xs-12 col-md-6">
            <ul>
              <li>Computerized Diagnostics</li>
              <li>Computer Engine Repairs</li>
              <li>Minor Engine Repairs</li>
              <li>Water Pump, Hose & Thermostat Repairs</li>
              <li>4-Wheel Drive Repairs</li>
              <li>Fuel Injection Diagnostics</li>
              <li>Tune-ups</li>
              <li>Brake Repairs</li>
            </ul>
          </div>
          <div class="col-xs-12 col-md-6">
            <li>Heating & Air-Conditioning Repair</li>
            <li>Standard Transmission Clutches</li>
            <li>Electrical</li>
            <li>Suspension Repairs</li>
            <li>Shocks & Struts</li>
            <li>Minor Welding</li>
            <li>Maintenance</li>
            <li>GM And Ford Instrument Cluster Repairs</li>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script type="application/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.min.js"></script>
  <script type="application/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <script type="application/javascript" src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
  <script type="application/javascript" src="${pageContext.request.contextPath}/resources/js/site.min.js"></script>
</body>
</html>
