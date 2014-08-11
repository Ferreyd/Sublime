<%@ page import="fr.mbds.cwitter.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
        <style>
            #conteneur {
                 margin-left: 50px;
                 margin-right: 50px;
                 overflow: hidden;
            }

            #conteneur #profile {
                width: 30%;
                float: left;
            }

            #conteneur #messages {
                width: 70%;
                float: left;

            }
        </style>
	</head>
	<body>
            <div id="menuUser"><g:render template="../user/menuUser"/></div>
            <div id="conteneur">
                <div id="profile">
                    <div id="myprofile"><g:render template="profile"/></div>
                    <div id="mygroupes"></div>
                </div>

                <div id="messages">
                    <div id="newmessage">

                    </div>
                    <br/><hr style="width: 600px;margin-left: 50px;"/>
                    <div id="mymessages"></div>
                </div>
            </div>

	</body>
</html>
