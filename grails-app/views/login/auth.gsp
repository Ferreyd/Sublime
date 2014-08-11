<%@ page import="fr.mbds.cwitter.User" %>

<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	<style type='text/css' media='screen'>
    body{
        background-color:deepskyblue ;
    }
	#login {
		margin: 15px 0px;
		padding: 0px;
		text-align: center;
	}

	#login .inner {
		width: 380px;
		padding-bottom: 6px;
		margin: 60px auto;
		text-align: left;
		border: 1px solid #aab;
		background-color: #f0f0fa;
		-moz-box-shadow: 2px 2px 2px #eee;
		-webkit-box-shadow: 2px 2px 2px #eee;
		-khtml-box-shadow: 2px 2px 2px #eee;
		box-shadow: 2px 2px 2px #eee;
        border-radius: 10px;
	}


	#login .inner .fheader {
		padding: 18px 26px 14px 26px;
		background-color: #f7f7ff;
		margin: 0px 0 14px 0;
		color: #2e3741;
		font-size: 18px;
		font-weight: bold;
	}

	#login .inner .cssform p {
		clear: left;
        margin-top: 20px;
		margin-left: 20px;
		height: 1%;
	}

	#login .inner .cssform input[type='text'] {
		width: 300px;
	}

	#login .inner .cssform label {
		font-weight: bold;
		float: left;
		text-align: right;
		margin-left: -105px;
		width: 110px;
		padding-top: 3px;
		padding-right: 10px;
	}

	#login #remember_me_holder {
		padding-left: 20px;
	}

	#login #submit {
        height:40px;
        border-radius:10px;
        border-color:#ffffff;
        background-color:deepskyblue;
        color:white;
	}

	#login #remember_me_holder label {
		float: none;
		margin-left: 0;
		text-align: left;
		width: 200px
	}

	#login .inner .login_message {
		padding: 6px 25px 20px 25px;
		color: #c33;
	}

	#login .inner .text_ {
		width: 300px;
        height: 30px;
        border-color: deepskyblue;
        border-radius: 5px;
	}

	#login .inner .chk {
		height: 12px;
	}

    #signup {
        width: 380px;
        padding-bottom: 6px;
        margin: 60px auto;
        text-align: left;
        border: 1px solid #aab;
        background-color: #f0f0fa;
        -moz-box-shadow: 2px 2px 2px #eee;
        -webkit-box-shadow: 2px 2px 2px #eee;
        -khtml-box-shadow: 2px 2px 2px #eee;
        box-shadow: 2px 2px 2px #eee;
        border-radius: 10px;
    }

    .text_  {
        clear: left;
        margin-top: 20px;
        margin-left: 20px;
        height: 1%;
        width: 300px;
        height: 30px;
        border-color: deepskyblue;
        border-radius: 5px;

    }

    #createUser{
        height:40px;
        border-radius:10px;
        border-color:#ffffff;
        background-color:deepskyblue;
        color:white;
        margin-left:250px;
    }

    #signUpHeader{
        margin-left: 20px;
        margin-top: 20px;
        color: deepskyblue;
        font-size: larger;
    }

	</style>
</head>

<body>

<div id='login'>
	<g:render template="connexion"/>
</div>

<div id="signup">
    <div id="signUpHeader">New to Cwitter ? Sign up</div>
    <g:render template="inscription"/>
</div>

<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
