<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Persons</title>
	</head>
	<body>
        <g:each in="${persons}" var="person" status="i">
            <h3>${i+1}. ${person.username}, ${person.password}</h3>
            <br/>
        </g:each>
	</body>
</html>