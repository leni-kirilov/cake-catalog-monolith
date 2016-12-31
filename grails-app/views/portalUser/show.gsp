<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'portalUser.label', default: 'PortalUser')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-portalUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link controller="login" action="logout"><g:message code="Logout"/></g:link></li>
                <li><g:link controller="cake" class="list" action="index"><g:message code="default.list.label" args="['Cake']" /></g:link></li>
                <li><g:link controller="cake" class="create" action="create"><g:message code="default.new.label" args="['Cake']" /></g:link></li>
                <li><g:link controller="portalUser" class="edit" action="edit"  resource="${session['loggedUser']}">Edit profile</g:link></li>
            </ul>
        </div>
        <div id="show-portalUser" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="portalUser" />
            <g:form resource="${this.portalUser}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.portalUser}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
