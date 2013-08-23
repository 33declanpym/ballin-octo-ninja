{extends file='layout.tpl'}
{block name=head}

<script language="JavaScript" type="text/javascript">
function validName(username,email,password,name){	
var errors = '';
if (username.length == 0) {
errors = errors + 'A email must not be empty\n';
} if (email.length == 0) {
errors = errors + 'A email must not be empty\n';
} if (password.length == 0) {
errors = errors + 'A password must not be empty\n';
} if (name.length == 0) {
errors = errors + 'Name must not be blank\n';
}

if (errors == '') {
return true;
} else {
window.alert('' + errors);
return false;
}
}
</script>
{/block}
{block name=section}
		<h1>Register a new user </h1>
		<form method="post" action="register_action.php" enctype="multipart/form-data" onSubmit="return validName(this.username.value, this.email.value, this.password.value, this.name.value)">
			<table>
			<tr><td>Username:</td> <td><input type="text" name="username"></td></tr>
			<tr><td>Email:</td><td> <input type="text" name="email"></td></tr>
			<tr><td>Password:</td> <td><input type="password" name="password"></td></tr>
			<tr><td>First Name:</td> <td><input type="text" name="fName"></td></tr>
			<tr><td>Last Name:</td> <td><input type="text" name="lName"></td></tr>			
			<tr><td colspan=2><input type="submit" value="Register">
			</table>
		</form>
{/block}