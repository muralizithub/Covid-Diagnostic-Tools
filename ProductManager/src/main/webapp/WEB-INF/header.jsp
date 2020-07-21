<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CovId Screen Test</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/fontawesome/fontawesome.min.css" rel="stylesheet">
<link href="/css/fontawesome/solid.min.css" rel="stylesheet">
<script src="/js/fontawesome/fontawesome.min.js"></script>
<script src="/js/fontawesome/solid.min.js"></script>

<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/common.js"></script>
</head>
<body>

<!-- Header -->
<div class="row">
	<div class="col col-lg-1">
		<!--  Logo Goes here -->
	</div>
	<div class="col col-lg-8">
		<h1 align="center"><b>Hospital Management System</b></h1>
	</div>
	<div class="col col-lg-3">
		<!--  Login information goes here -->
	</div>
</div>
<!-- End Header -->

<!--  Navigation Bar Being -->
<nav class="navbar navbar-default">
  <div class="container-fluid">
  
   <div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#doctor-menu" aria-expanded="false">
		</button> 			
   	</div>
    </div>
    
    <div class="collapse navbar-collapse" id="doctor-menu">
      <ul class="nav navbar-nav">
        <li class="active">
          <a href="/">
          <i class="fas fa-user-md" style="font-size: 20px"></i>&nbsp;Predictive Management</a>
          
        </li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-diagnoses" style="font-size: 20px"></i>&nbsp;Diagnosis<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/diagnosis">CovId-19 Screen Test</a></li>
            <li><a href="/diagnosisMethod">CovId-19 Diagnosis Methods</a></li>
          </ul>
        </li>
        
        <li>
          <a href="/treatment">
          <i class="fas fa-sitemap" style="font-size: 20px"></i>&nbsp;Treatment Management</a>
        </li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-chart-line" style="font-size: 20px"></i>&nbsp;Reports<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="docrep.jsp">Doctor</a></li>
            <li><a href="patrep.jsp">Patient</a></li>
            <li><a href="medrep.jsp">Medicine</a></li>
          </ul>
        </li>
      </ul>
      
<!--       <ul class="nav navbar-bar navbar-right">
      	<li>
      	<a href="#">
          <i class="fas fa-user" style="font-size: 20px"></i>&nbsp;SampleUser1<span class="caret"></span></a>
        <ul class="dropdown-menu">
        	<li><a href="logout.jsp">Logout</a></li>
        </ul>
      	</li>
      </ul>   -->
      
      <ul class="nav navbar-bar navbar-right">
      	<li>
	      	<button onClick='window.location.href="/"' class="dropdown-toggle"><i class="fas fa-home" style="font-size: 20px"></i></button>
      	</li>
      </ul>
    </div>
</nav>
<!-- Navigation Bar End -->
</body>
</html>