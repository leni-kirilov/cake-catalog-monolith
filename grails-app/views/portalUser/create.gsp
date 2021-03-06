<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'portalUser.label', default: 'PortalUser')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-portalUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div class="nav" role="navigation">
            <ul>
                <li><g:link controller="login" action="logout"><g:message code="Home"/></g:link></li>
            </ul>
        </div>

        <div id="create-portalUser" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.portalUser}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.portalUser}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form action="save" controller="portalUser">
                <fieldset class="form">
                    <f:field bean="portalUser" name="name" required="true" property="name"/>
                    <f:field bean="portalUser" name="email" required="true" property="email"/>
                    <f:field bean="portalUser" property="password" required="true" >
                        <g:passwordField name="password"/>
                    </f:field>

                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
