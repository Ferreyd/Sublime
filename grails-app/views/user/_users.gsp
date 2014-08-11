<table style="background-image: url(../images/backprofile.jpg)">
    <tr><th style="background-image: url(../images/block1.jpeg);background-repeat:repeat-x;  text-align: center;"> MEMBER </th></tr>
    <g:each in="${users}" var="user">
        <tr style="text-align: center;">
            <td>
                <g:if test="${user?.firstname}">
                    <g:link controller="user" action="show" id="${user.id}"> <g:fieldValue bean="${user}" field="firstname"/><span style="text-decoration:none; color: #ffffff;text-align: center;font-size:16px;"></span> <g:fieldValue bean="${user}" field="lastname"/></span>  </g:link>
                </g:if>
            </td>
        </tr>
    </g:each>

</table>