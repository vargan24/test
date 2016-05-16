<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Form</title>
	</head>
	<body>
        <g:form controller="Reg" action="save">
            <label>Login: </label>
            <g:textField name="username"/><br/>
            <label>Pass: </label>
            <g:textField name="password"/><br/>
            <g:actionSubmit value="save"/>
        </g:form>
	</body>
</html>