<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
	<title>Bulletin board</title>
	</head>
	<body>
		<text>You have to be authorized to post.</text>
<g:link controller="logoutController">Login</g:link>
<g:link controller="RegController">Register</g:link>

	<a>
	    <g:each in="${posts}" var="p" status="i">
        <h3>${p.owner.username}: ${p.data}</h3>
        </g:each>

	</a>
	</body>
</html>