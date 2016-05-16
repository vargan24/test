<!DOCTYPE html>
<html>
	<head>
<meta name="layout" content="main"/>
		<title>Bulletin board</title>
	</head>
	<body>
	<g:link controller="logoutController">Logout</g:link>
	       <g:form url="[action:'press',controller:'website']" >
            <label>Your message:</label>
            <g:textField name="data" value="${data}"/><br/>
            <g:actionSubmit value="ok"/>
        </g:form>


	<a>
	    <g:each in="${posts}" var="p" status="i">
        <h3>${p.owner.username}: ${p.data}</h3>
        </g:each>

	</a>
	</body>
	<script>
var myVar = setInterval(myTimer, 1000);
function myTimer() {
    var d = new Date();
    document.getElementById("demo").innerHTML = d.toLocaleTimeString();
}
</script>
</html>