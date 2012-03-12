<cffunction name="sendProwl" returntype="struct" output="no">

	<cfargument name="apikey"		default="{key masked}"								required="no">
	<cfargument name="priority"		default="0"											required="no" hint="An integer value ranging [-2, 2]: Very Low, Moderate, Normal, High, Emergency.">
	<cfargument name="application"	default="ColdFusion"								required="no" hint="[256] The name of your application or the application generating the event.">
	<cfargument name="event"		default="test notification"							required="no" hint="[1024] The name of the event or subject of the event.">
	<cfargument name="description"	default="generated at #now()#"						required="no" hint="[10000] A description of the event, generally terse.">

	<cfdump var="#arguments#">
	
	<cfhttp method="Post" url="https://prowl.weks.net/publicapi/add" result="prowlData">
		<cfhttpparam type="formfield" name="apikey"		 value="#arguments.apikey#">
		<cfhttpparam type="formfield" name="priority"	 value="#arguments.priority#">
		<cfhttpparam type="formfield" name="application" value="#arguments.application#">
		<cfhttpparam type="formfield" name="event"		 value="#arguments.event#">
		<cfhttpparam type="formfield" name="description" value="#arguments.description#">
	</cfhttp>

	<cfreturn prowlData>

</cffunction>