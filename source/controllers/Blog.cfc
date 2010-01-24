<cfcomponent extends="Controller">
	<cffunction name="users">
		<cfset users = model("user").findAll(order="username", include="posts", returnAs="objects") />
	</cffunction>
	
	<cffunction name="posts">
		<cfset content = model("post").findAll(order="showat", include="comments", returnAs="objects") />
	</cffunction>
	
	<cffunction name="post">
		<cfif isDefined("params.key") AND isNumeric(params.key)>
			<cfset content = model("post").findByKey(key=params.key, order="showat", include="comments", returnAs="object") />
			<cfif isAjax()>
				<cfset renderPartial(content) />
			</cfif>
		<cfelse>
			<cfset redirectTo(action="posts") />
		</cfif>
	</cffunction>
	
	<cffunction name="comments">
		<cfif isDefined("params.key") AND isNumeric(params.key) AND isAjax()>
			<cfheader name="cache-control" value="no-cache" />
			<cfset content = model("comment").findAllByPostId(value=params.key, order="createdat asc") />
			<cfset renderPartial(partial="commentlist", content=content) />
		<cfelse>
			<cfset redirectTo(action="posts") />
		</cfif>
	</cffunction>
</cfcomponent>