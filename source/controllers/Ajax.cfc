<cfcomponent extends="Controller">
	<cffunction name="users">
		<cfset users = model("user").findAll(order="username", include="posts") />
		<cfset renderPartial(users) />
	</cffunction>
	
	<cffunction name="posts">
		<cfset posts = model("post").findAll(order="postedAt", include="comments") />
		<cfset renderPartial(users) />
	</cffunction>
	
	<cffunction name="comments">
		<cfset comments = model("comment").findAll(order="createdat") />
		<cfset renderPartial(comments) />
	</cffunction>
</cfcomponent>