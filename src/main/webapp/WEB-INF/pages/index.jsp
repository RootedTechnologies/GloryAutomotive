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
<nav class="navbar navbar-default navbar-fixed-top hidden" role="navigation">
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
        <li data-link="home" class="active"><a href="">HOME</a><div class="navbar-underline"></div></li>
        <li data-link="services"><a href="#services">SERVICES</a><div class="navbar-underline"></div></li>
        <li data-link="location"><a href="#location">LOCATION</a><div class="navbar-underline"></div></li>
        <li data-link="contact-us"><a href="#contact-us">CONTACT US</a><div class="navbar-underline"></div></li>
        <li data-link="warranty"><a href="#warranty">WARRANTY</a><div class="navbar-underline"></div></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
  <div class="container">
    <div class="row">
      <div class="col-xs-12 logo-banner">
        <img alt="Rowlett Glory Automotive Logo" src="${pageContext.request.contextPath}/resources/images/logo.png" />
      </div>
      <div class="col-xs-12">
        <nav class="navbar navbar-default navbar-floating-top" role="navigation">
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
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
              <ul class="nav navbar-nav">
                <li data-link="home" class="active"><a href="">HOME</a><div class="navbar-underline"></div></li>
                <li data-link="services"><a href="#services">SERVICES</a><div class="navbar-underline"></div></li>
                <li data-link="location"><a href="#location">LOCATION</a><div class="navbar-underline"></div></li>
                <li data-link="contact-us"><a href="#contact-us">CONTACT US</a><div class="navbar-underline"></div></li>
                <li data-link="warranty"><a href="#warranty">WARRANTY</a><div class="navbar-underline"></div></li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
      </div>
      <div class="col-xs-12 family-photo">
      </div>
      <div class="col-xs-12 color-divider version-one"></div>
      <div class="col-xs-12 info-section one-stop">
        <div class="title">
          Affordable Auto Repair from Mechanics You Can Trust
        </div>
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
      <div class="col-xs-12 color-divider version-two"></div>
      <div class="col-xs-12 info-section full-service" id="services">
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
      <div class="col-xs-12 color-divider version-three"></div>
      <div class="col-xs-12 google-map" id="location">

      </div>
      <div class="col-xs-12 color-divider version-one"></div>
      <div class="col-xs-12 info-section here-to-serve" id="contact-us">
        <div class="row title">
          We're Here To Serve You
        </div>
        <div class="row description">
          <div class="col-xs-12 col-md-6">
            <div class="row">
              <div class="col-xs-12">
                You can contact us in Rowlett, Texas, to schedule automotive repair services for your vehicle today by calling us at <span class="highlight">214-440-1661</span> or using the form below:
              </div>
            </div>
            <div class="row">
              <form id="contact-form" class="contact-form">
                <div class="col-xs-12">
                  <input id="contact-name" class="form-control" placeholder="Name"/>
                </div>
                <div class="col-xs-12">
                  <input id="contact-email" class="form-control" placeholder="Email"/>
                </div>
                <div class="col-xs-12">
                  <input id="contact-phone" class="form-control" placeholder="Phone"/>
                </div>
                <div class="col-xs-12">
                  <input id="contact-subject" class="form-control" placeholder="Subject"/>
                </div>
                <div class="col-sm-4">
                  <select id="contact-make" class="form-control">
                    <option value="">Select Make</option>
                    <option value="ford">Ford</option>
                    <option value="dodge">Dodge</option>
                    <option value="chevrolet">Chevrolet</option>
                  </select>
                </div>
                <div class="col-sm-4">
                  <select id="contact-model" class="form-control">
                    <option value="">Select Model</option>
                  </select>
                </div>
                <div class="col-sm-4">
                  <select id="contact-year" class="form-control">
                    <option value="">Select Year</option>
                  </select>
                </div>
                <div class="col-xs-12">
                  <input type="submit" id="submit-contact-form" class="btn btn-block btn-primary" />
                </div>
              </form>
            </div>
          </div>
          <div class="col-xs-12 col-md-6">

          </div>
        </div>
      </div>
      <div class="col-xs-12 color-divider version-two"></div>
      <div class="col-xs-12 info-section warranty" id="warranty">
        <div class="row title">
          We Stand Behind Our Work
        </div>
        <div class="row description">
          <div class="col-md-6"></div>
          <div class="col-md-6">
            Along with accepting many after market warranties, we stand behind the work of our ASE Certified Mechanics and offer a 12 month/12,000 mile warranty on all of our work (unless otherwise stated).

            We guarantee you'll be happy with the work we do at Rowlett Glory Automotive.

            Just give us a call and we'll be glad to discuss how we go to work for you.
          </div>
        </div>
      </div>
      <div class="col-xs-12 color-divider version-three"></div>
    </div>
  </div>
  <script type="text/html" id="map-details-template" >
    <div class="content">
      <span class="map-title">{{name}}</span>
      <span class="map-address">{{line1}}</span>
      <span class="map-address">{{line2}}</span>
    </div>
  </script>
  <script type="application/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.min.js"></script>
  <script type="application/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <script type="application/javascript" src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
  <script type="application/javascript" src="https://maps.googleapis.com/maps/api/js?libraries=places"></script>
  <script type="application/javascript" src="${pageContext.request.contextPath}/resources/js/index.js"></script>
</body>
</html>
