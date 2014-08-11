<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Cwitter"/></title>
        <%-- <script type="text/javascript" href="${resource(dir: 'js', file: 'jquery.js')}"></script>
        <script type="text/javascript" href="${resource(dir: 'js', file: 'jquery-ui.js')}"></script> --%>
         <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"> --%>
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'cwitter.png')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
        <link  rel="stylesheet" href="${resource(dir: 'css', file: 'menu.css')}" type="text/css" />
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui.css')}" type="text/css">
     <script type="text/javascript" href="${resource(dir: 'js', file: 'jquery.js')}" ></script>
<%-- <script type="text/javascript" href="${resource(dir: 'js', file: 'jquery-1.9.1.js')}" ></script>
<script type="text/javascript" href="${resource(dir: 'js', file: 'jquery-ui.js')}" ></script> --%>
         <script type="text/javascript" href="${resource(dir: 'js', file: 'menu.js')}" ></script>
<g:layoutHead/>
<r:layoutResources />
</head>
<body>
<div id="grailsLogo" style="background-color: #ffffff; text-align: center;" role="banner"><a href="http://localhost:8080/mycwitter"><img src="${resource(dir: 'images', file: 'cwitter1.jpg')}"  alt="Grails"/></a></div>
<g:layoutBody/>
<div class="footer" style="background-color: deepskyblue;color: #ffffff;text-align: center;" role="contentinfo">Sublime : Sandrine Pantaleo & Lucas Dupuy & Nicolas Cordina</div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>
