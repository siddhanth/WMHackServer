<!DOCTYPE html>

<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en" class="no-js">
	<head>
			
		<meta charset="UTF-8" />
		
		<%@ include file="/WEB-INF/jsp/js/pageJS.jsp" %>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Walmart Review Monitor</title>
		<meta name="description" content="Blueprint: Vertical Icon Menu" />
		<meta name="keywords" content="Vertical Icon Menu, vertical menu, icons, menu, css" />
		<meta name="author" content="Codrops" />
		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
		
		<link rel="shortcut icon" href="../favicon.ico">
		<script src="/resources/js/modernizr.custom.js" /></script>
		<script src="/resources/js/bootstrap.min.js" /></script>
		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
		<script src="http://code.highcharts.com/highcharts.js"></script>
		<script src="http://code.highcharts.com/modules/exporting.js"></script>
		<link href="/resources/css/default.css"  rel="stylesheet">
		<link href="/resources/css/component.css" rel="stylesheet">
		<link type="text/css" href="${path}/resources/css/bootstrap.min.css" rel="stylesheet"/>
		<link type="text/css" href="${path}/resources/css/bootstrap-responsive.min.css" rel="stylesheet"/>
		
		<script>
		
		$(function () {
		    $('#container').highcharts({
		        chart: {
		            plotBackgroundColor: null,
		            plotBorderWidth: null,
		            plotShadow: false
		        },
		        title: {
		            text: 'Reviews Sentiment Meter'
		        },
		        tooltip: {
		    	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		        },
		        plotOptions: {
		            pie: {
		                allowPointSelect: true,
		                cursor: 'pointer',
		                dataLabels: {
		                    enabled: true,
		                    color: '#000000',
		                    connectorColor: '#000000',
		                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
		                }
		            }
		        },
		        series: [{
		            type: 'pie',
		            name: 'Review Share',
		            data: [
		                ['Positive',  ${map.positive}],		                
		                {
		                    name: 'Negative',
		                    y: ${map.negative},
		                    sliced: true,
		                    selected: true
		                }
		            ]
		        }]
		    });
		});</script>

		
	
	</head>
	<body>
		<div class="container">
			<header class="clearfix">
				
				<h1>Walmart Review Monitor</h1>
							</header>
			<ul class="cbp-vimenu">
				<li><a href="#" class="icon-logo">Logo</a></li>
				
				<li><a href="/product" class="icon-search">Search</a></li>
				<li><a href="#" class="icon-pencil">Pencil</a></li>
				<!-- Example for active item:
				<li class="cbp-vicurrent"><a href="#" class="icon-pencil">Pencil</a></li>
				-->
				<li><a href="#" class="icon-location">Location</a></li>
				<li><a href="#" class="icon-images">Images</a></li>
				<li><a href="#" class="icon-download">Download</a></li>
			</ul>
			<div class="main">
				
				<h2>Review Sentiment Monitor</h2>
				<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
				
    	</div>									
	</div>			
			
		
		
	
	</body>
</html>
