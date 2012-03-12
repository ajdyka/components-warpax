<cffunction name="sendSMS">
	<cfargument name="recipient"	required="yes">
	<cfargument name="message"		required="yes">
	<cfargument name="unknownUse"	required="no" default="99">
	<cfargument name="apiKey"		required="no" default="{key masked}">
	<cfargument name="from"			required="no" default="0418310677">
	<cfargument name="action"		required="no" default="sendsms">
	
	<cfhttp url="http://www.maxo.com.au/pages/na.php" method="POST" charset="UTF-8">
		<cfhttpparam type="URL" name="v"			value="99">
		<cfhttpparam type="URL" name="action"		value="sendsms">
		<cfhttpparam type="URL" name="txtto"		value="#arguments.recipient#">
		<cfhttpparam type="URL" name="fromphnumber" value="0418310677">
		<cfhttpparam type="URL" name="key"			value="#arguments.apiKey#">
		<cfhttpparam type="URL" name="txtmessage"	value="#arguments.message#">
	</cfhttp>

</cffunction>