{extends file='layout.tpl'}
{block name=section}
		<h1> Welcome! </h1>
		<h4> Solution to Semester 1, 2012, Web Programming, Assignment 2 </h4>
		<p> Thank you for visiting this website. Please find below a list of our most recently added jobs.</p>
		<h2> Recently Added Jobs </h2>
		<ul>
		{foreach $latest as $l}
			<li><a href=job_detail.php?Id={$l.Id|escape}&isemp=>{$l.Title|escape}</li></a>
		{/foreach}
		</ul>
		<hr>

{/block}