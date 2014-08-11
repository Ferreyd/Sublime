<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<table style="background-image: url(../images/backprofile.jpg)">
    <tr><th style="background-image: url(../images/block1.jpeg);background-repeat:repeat-x;  text-align: center;">  <g:link controller="user" action="edit" id="${userInstance.id}" style="color: #ffffff;">PROFILE </g:link> </th></tr>

        <tr style="text-align: center;"> <td>
            <g:if test="${userInstance?.username}">
                   <g:message code="user.username.label" default="Username :" />
                   <g:fieldValue bean="${userInstance}" field="username"/>
            </g:if>
            </td>
        </tr>
        <tr style="text-align: center;">
            <td>
            <g:if test="${userInstance?.email}">
                   <g:message code="user.email.label" default="Email :" />
                <g:fieldValue bean="${userInstance}" field="email"/>

            </g:if>
            </td>
        </tr>
        <tr style="text-align: center;">
        <td>
            <g:if test="${userInstance?.firstname}">
                  <g:message code="user.firstname.label" default="Name : " />
                  <g:fieldValue bean="${userInstance}" field="firstname"/>   <g:fieldValue bean="${userInstance}" field="lastname"/>

            </g:if>
            </td>
        </tr>

</table>

