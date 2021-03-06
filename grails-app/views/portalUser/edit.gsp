<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'portalUser.label', default: 'PortalUser')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-portalUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link controller="login" action="logout"><g:message code="Logout"/></g:link></li>
                <li><g:link controller="cake" class="list" action="index"><g:message code="default.list.label" args="['Cake']" /></g:link></li>
                <li><g:link controller="cake" class="create" action="create"><g:message code="default.new.label" args="['Cake']" /></g:link></li>
            </ul>
        </div>
        <div id="edit-portalUser" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /> with email [${this.portalUser.email}]</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <g:form resource="${this.portalUser}" method="PUT">
                <fieldset class="form">
                    <f:field property="name" value="${this.portalUser?.name}"/>
                    <f:field property="password" required="true" >
                      <g:passwordField name="password"/>
                    </f:field>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
