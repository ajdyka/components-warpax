<cffunction name="updateTwitter">
	<cfargument name="message"	required="yes">
	<cfargument name="tUsername" required="no"	default="{username masked}">
	<cfargument name="tPassword" required="no"	default="{password masked}">

	<cfhttp url="http://twitter.com/statuses/update.xml" method="POST" charset="UTF-8" result="postResult" username="#arguments.username#" password="#arguments.password#">
		<cfhttpparam type="formfield"	name="status"	value="#arguments.message#">
	</cfhttp>

	<cfreturn postResult>

</cffunction>