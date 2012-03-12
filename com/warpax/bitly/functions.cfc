<cffunction name="shortenUrl" returntype="struct" output="no">

	<cfargument name="version"	required="no"	default="2.0.1">
	<cfargument name="login"	required="yes">
	<cfargument name="apiKey"	required="yes">
	<cfargument name="longUrl"	required="yes">
	<cfargument name="history"	required="no"	default="1">
	<cfargument name="format"	required="no"	default="xml">

	<cfdump var="#arguments#">

	<cfhttp method="Post" url="http://api.bit.ly/shorten" result="response" >
		<cfhttpparam type="url" name="version"	value="#arguments.version#">
		<cfhttpparam type="url" name="longUrl"	value="#arguments.longUrl#">
		<cfhttpparam type="url" name="login"	value="#arguments.login#">
		<cfhttpparam type="url" name="apiKey"	value="#arguments.apiKey#">
		<cfhttpparam type="url" name="history"	value="#arguments.history#">
		<cfhttpparam type="url" name="format"	value="#arguments.format#">
	</cfhttp>

	<cfreturn response />

</cffunction>