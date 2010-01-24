<cfoutput>
	<strong>#linkTo(action="post", key=id, text=title)#</strong><br />
	#body#<br /><br />
	---
	<div id="comments">
		#includePartial(comments)#
	</div>
	<hr />
</cfoutput>