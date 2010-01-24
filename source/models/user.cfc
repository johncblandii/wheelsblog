<cfcomponent extends="Model">
	<cffunction name="init">
		<cfset hasMany("posts") />
	</cffunction>
</cfcomponent>