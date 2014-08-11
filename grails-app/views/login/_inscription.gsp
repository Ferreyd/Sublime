<g:form controller="user" action="save" class='cssform' method="post">
    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
        <g:textField name="username" class='text_' required="" value="${userInstance?.username}" placeholder="${message(code:"user.username.label")}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
        <g:passwordField name="password" class='text_' required="" value="${userInstance?.password}" placeholder="${message(code:"user.password.label")}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">

        <g:field type="email" class='text_' name="email" required="" value="${userInstance?.email}" placeholder="${message(code:"user.email.label")}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstname', 'error')} required">

        <g:textField name="firstname" class='text_'  required="" value="${userInstance?.firstname}" placeholder="${message(code:"user.firstname.label")}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastname', 'error')} required">

        <g:textField name="lastname" class='text_' required="" value="${userInstance?.lastname}" placeholder="${message(code:"user.lastname.label")}"/>
    </div>
    </br> </br>
    <g:submitButton name="createUser" value="Sign up"/>

</g:form>