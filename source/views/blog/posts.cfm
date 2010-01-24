<cfparam name="content" type="array" default="#ArrayNew(1)#" />

<cfoutput>
<h2>Posts</h2>

#includePartial(content)#

</cfoutput>