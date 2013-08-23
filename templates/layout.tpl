<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
<!-- Home page of PhpRPG
	Author: Declan Pym
	SNumber: S2680559
-->
<html>
<head>
  <title>PHP RPG</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link rel="stylesheet" type="text/css" href="styles/wp.css">
{block name=head}{/block}
</head>
<body>
	<div id="container">
	
	<div id="header">{block name=header}
		<span class="alert">PHP RPG</span>
		<hr>
	{/block}</div>
	
	<div id="menu">
		<div id="mainmenu">
		<h2> MENU </h2>
		<a href="index.php">Home</a>
		<br/><a href="#">Profile</a> 
		<br/><a href="#">Forum</a> 
		<br/><a href="#">Help</a>
		<br/><a href="login.php">Log In</a>
		<br/><a href="register.php">Register</a>
		<br/><a href="#">Log Out</a>		
		</div>
		<div id="location">
		<h3> Position </h3>
		<b>Longitude:</b>
		<br/><b>Latitude:</b>
		<br/>Map
		</div>
	</div>
		
	<div id="content">
		{if $email}
		<span class="user">Welcome Back, {$email} </span>
		<a class="logout" href="logout_action.php">Log Out</a>
		{/if}
		{block name=section}
		
		{/block}</div>
		
	<div id="rmenu">
		<div id="character">
		<h3> Character </h3>
		<b>Name: 
		<br/>Level: 
		<br/>Latitude:
		<br/>Longitude:
		<br/>Residence:
		<br/>Bank:
		<br/>Gold:
		<br/>Skillpoints:
		<br/>Strength:
		<br/>Dexterity:
		<br/>Intelligence:
		<br/>Vitality:
		<br/>Wisdom:
		<br/>Constitution:
		<br/>Charisma:
		<br/> </b>
		</div>

		<div id="inventory">
		<h3> Inventory </h3>
		Armor Layout Pic Goes Here
		</div>
		
		<div id="spells">
		<h3> Spells </h3>
		List of spells here
		</div>
		
	</div>
		
	<div id="footer">
		{block name=footer}
			<hr>
			<address>
				&copy; Declan Pym 13/11/2012
				<br/> Version 0.01
			</address>
		{/block}
	</div>
	</div>
</body>
</html>