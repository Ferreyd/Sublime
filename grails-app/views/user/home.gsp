<%--
  Created by IntelliJ IDEA.
  User: Sandrine
  Date: 02/12/13
  Time: 00:11
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <style type="text/css">



        #messages{
            height:1200px;
            overflow:scroll;
            overflow-x:hidden;
        }


        #conteneur {
            margin-left: 30px;
            overflow: hidden;
        }

        #conteneur #search {
            width: 25%;
            float: left;
        }

        #conteneur #allMessages {
            width: 75%;
            float: left;

        }

    </style>


</head>
<body>
        <div id="menuUser"><g:render template="menuUser"/></div>
       <div id="conteneur">
           <div id="search">
               <div id="searchUser">
                    <g:render template="usersHome"/>
               </div>

               <div id="searchGroup">

               </div>

           </div>
           <div id="allMessages">

           </div>
       </div>
</body>
</html>