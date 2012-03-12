<cffunction name="processPing" returntype="struct" output="no">

	<cfargument name="user_app_key"	default="{key masked}"									required="no">
	<cfargument name="api_key"		default="{key masked}"									required="no">
	<cfargument name="update_type"	default="validate"										required="no" hint="can be validate or post">
	<cfargument name="post_method"	default="status"										required="no">
	<cfargument name="body"			default=""												required="no">

	<cfhttp method="Post" url="http://api.ping.fm/v1/user.#arguments.update_type#" result="pingData">
		<cfhttpparam type="formfield" name="user_app_key"	value="#arguments.user_app_key#">
		<cfhttpparam type="formfield" name="api_key"		value="#arguments.api_key#">
		<cfhttpparam type="formfield" name="post_method"	value="#arguments.post_method#">
		<cfhttpparam type="formfield" name="body"			value="#arguments.body#">
	</cfhttp>

	<cfreturn pingData />

</cffunction>