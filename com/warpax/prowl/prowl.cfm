<cfhttp method="Get" url="https://prowl.weks.net/publicapi/verify" result="prowlData">
	<cfhttpparam type="formfield" name="apikey" value="{key masked}">
	<!--- <cfhttpparam type="formfield" name="" value=""> --->
</cfhttp>

<cfdump var="#prowlData#">

<cfhttp method="Post" url="https://prowl.weks.net/publicapi/add" result="prowlData">
	<cfhttpparam type="formfield" name="apikey" value="{key masked}">
	<cfhttpparam type="formfield" name="priority" value="2"><!--- An integer value ranging [-2, 2]: Very Low, Moderate, Normal, High, Emergency. --->
	<cfhttpparam type="formfield" name="application" value="ColdFusion"><!--- [256] The name of your application or the application generating the event. --->
	<cfhttpparam type="formfield" name="event" value="test notification"><!--- [1024] The name of the event or subject of the event. --->
	<cfhttpparam type="formfield" name="description" value="generated at #now()#"><!---  [10000] A description of the event, generally terse. --->
</cfhttp>

<cfdump var="#prowlData#">