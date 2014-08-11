<div class='inner'>


    <g:if test='${flash.message}'>
        <div class='login_message'>${flash.message}</div>
    </g:if>

    <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
        <p>
            <input type='text' class='text_' name='j_username' id='username' placeholder="${message(code: "springSecurity.login.username.label")}"/>
        </p>

        <p>
            <input type='password' class='text_' name='j_password' id='password' placeholder="${message(code: "springSecurity.login.password.label")}"/>
        </p>

        <p id="remember_me_holder">
            <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
            <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
            <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
        </p>


    </form>
</div>