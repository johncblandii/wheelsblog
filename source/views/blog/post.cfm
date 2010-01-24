<cfparam name="content" type="struct" default="#StructNew()#" />

<cfoutput>
<script>
	var refreshInterval;
	$(document).ready(
		function(){
			 setInterval(function(){
							$('##comments').hide("fast").load('/blog/comments/#content.id#').show("fast");
						}, 5000);
		}
	);
</script>

#includePartial(content)#
</cfoutput>