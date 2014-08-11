<div id="menu">
    <ul class="menu">
        <li><g:link controller="home" action="user"><span>Cwitter</span></g:link> </li>
        <li style="margin-right: 12px;"><span>Groups</span></li>
        <li style="margin-right: 12px;"><g:link controller="user" action="show" id="${session.getAttribute("idCurrentUser")}"><span>My profile</span></g:link></li>
        <li style="margin-left:140px; color: #000000;"> <a href="#"><span>Username : ${session.getAttribute("usernameCurrentUser")}</span></a></li>
        <li><g:link controller="logout" action="index"><span>Log out</span></g:link> </li>
    </ul>
</div>