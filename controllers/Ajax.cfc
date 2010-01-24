<cfcomponent extends="Controller">
	<cffunction name="users">
		<cfset users = model("posts").findAll() />
		<cfreturn renderPartial(users)>
	</cffunction>
</cfcomponent>