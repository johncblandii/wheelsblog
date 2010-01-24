<cfcomponent extends="Model">
	<cffunction name="init">
		<cfset belongsTo("user") />
		<cfset hasMany("comments") />
	</cffunction>
</cfcomponent>