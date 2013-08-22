<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
<!-- Home page of Assignment 1, Web Programming
	Author: Declan Pym
	SNumber: S2680559
-->
<html>
<head>
  <title>Assignment 2, Job Site</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link rel="stylesheet" type="text/css" href="styles/wp.css">
{block name=head}{/block}
</head>
<body>
	<div id="container">
	
	<div id="header">{block name=header}
		<span class="alert">The Seekers</span>
		<hr>
	{/block}</div>
	
	<div id="menu">
		<h2> MENU </h2>
		<a href="index.php">Home</a>
		<p><a href="job_list.php">View Jobs</a> 
		<p><a href="search_form.php">Search Jobs</a> 
		<p><a href="docs/doc.html">Documentation</a>
		{if !$email}
		<p><a href="register.php">Register</a> 
		<p><a href="login.php">Log In</a> 
		{/if}
		<p><br/>
		{if $email}
		<h3><u>User Menu</u></h3>
		<p><a href="updatepw.php">Update Password</a>
		<p><a href="update_suser.php">Update Details</a>
		{/if}
		<p><br/>
		{if $category == 2}
		<h3><u>Employer Menu</u></h3>
		<p><a href="view_applications.php?Id=">View Applications</a>
		<p><a href="create_job.php">Create New Job</a>
		<p><a href="edit_jobs.php">Edit Existing Jobs</a>
		<p><br/>
		{/if}
		{if $category > 2}
		<h3><u>Admin Menu</u></h3>
		<p><a href="update_user.php">Update Users</a></p>
		{/if}

	</div>
		
	<div id="content">
		{if $email}
		<span class="user">Welcome Back, {$email} </span>
		<a class="logout" href="logout_action.php">Log Out</a>
		{/if}
		{block name=section}
		
		{/block}</div>
		
	<div id="footer">
		{block name=footer}
			<hr>
			<address>
				Declan Pym 25/5/2012
			</address>
		{/block}
	</div>
	</div>
</body>
</html>