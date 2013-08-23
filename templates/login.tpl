{extends file='layout.tpl'}
{block name=head}
<script language="JavaScript" type="text/javascript">
function validName(email){	
var errors = '';
if (email.length == 0) {
errors = errors + 'Your name must not be empty\n';
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
<h1> Please Log In </h1>
<form method="post" action="authenticate.php" enctype="multipart/form-data" onSubmit="return validName(this.email.value)">
    <table>
    <tr><td>E-mail:</td> <td><input type="text" name="email"></td></tr>
    <tr><td>Password:</td> <td><input type="password" name="password"></td></tr>
    <tr><td colspan=2><input type="submit" value="Login">
    </table>
{/block}