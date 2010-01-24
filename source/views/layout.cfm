<html>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
	<script>
		$.ajaxSetup ({
			cache: false
		});
	</script>
	<body>
		<cfoutput>
			#linkTo(action="posts", text="posts")#
		</cfoutput>
		<hr />
		<cfoutput>#contentForLayout()#</cfoutput>
	</body>
</html>