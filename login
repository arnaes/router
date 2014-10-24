<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Iniciar sesión</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Cache-Control" content="no-cache">
<link rel="shortcut icon" href="/130528.1754/favicon.ico" >
<link href="/130528.1754/login.css" rel="stylesheet" type="text/css">
<link href="/130528.1754/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/130528.1754/js/jquery.js"></script>
<script type="text/javascript" src="/130528.1754/util.js"></script>
<script type="text/javascript" src="/130528.1754/index.js"></script>
<script type="text/javascript" language="javascript">
//<!--
var globals = {
	first_login : false,
	postback : false,
	fixed : false,
	country : ""
};

function onLangChange() {
	$("#lang_changed").val("yes");
	$("#loginform").submit();
}

function validateForm() {
	if ($("#lang_changed").val() == "yes")
		return true;

	if ($("#country").val() == "0") {
		$("#errmsg").text("Por favor seleccione su país");
		return false;
	}

	if (!$("#agreed").is(":checked")) {
		$("#errmsg").html("Para usar este producto, debe aceptar los <br/>términos de uso.");
		return false;
	}

	return true;
}

$(document).ready(function() {
	$("#username").focus();
	cache_images([
		'main_top.png', 'main.png', 'link.png',
		'net.png', '4dv.png', 'srv.png',
		'system.png', 'border.gif', 'spectr.gif']);

	if (globals.first_login) {
		$("#ui_language").change(onLangChange);
		$("#loginform").submit(validateForm);
		if (!globals.postback && !globals.fixed)
			$("#country").val(0);
		else
			$("#country").val(globals.country);
	}
});
//-->
</script>
</head>

<body>
<table border="0" cellpadding="0" cellspacing="0" align="center" class="loginsubtable">
<form enctype="multipart/form-data" id="loginform" method="post" action="/login.cgi">
	<tr>
		<td valign="top"><img src="/130528.1754/images/airos_logo.png"></td>
		<td class="loginsep">
				<input type="hidden" name="uri" id="uri" value="/" />
				<table border="0" cellpadding="0" cellspacing="0" class="logintable" align="center">
					<tr>
						<td colspan="2" align="center">
							<div id="errmsg" class="error">
								
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td><label for="username">Nombre de usuario:</label></td>
						<td><input type="text" name="username" id="username" /></td>
					</tr>
					<tr>
						<td><label for="password">Contraseña:</label></td>
						<td><input type="password" name="password" id="password" maxlength="8"/></td>
					</tr>
					
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
				</table>
		</td>
	</tr>
	
	<tr>
		<td>
		
		</td>
		<td class="submit" align="right">
			<input type="submit" value="Iniciar sesión" />
		</td>
	</tr>
</form>
</table>
</body>
</html>

