<cfhttp url="http://www.maxo.com.au/pages/na.php" method="GET" charset="UTF-8" result="smsResult">
	<cfhttpparam type="URL" name="v"			value="99">
	<cfhttpparam type="URL" name="action"		value="sendsms">
	<cfhttpparam type="URL" name="txtto"		value="{destination number}">
	<cfhttpparam type="URL" name="fromphnumber" value="{my number}">
	<cfhttpparam type="URL" name="key"			value="{key masked}">
	<cfhttpparam type="URL" name="txtmessage"	value="test2">
</cfhttp>

<cfdump var="#smsResult#">