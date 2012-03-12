<!---

user_app_key: 1f7ce47f88e93bcb61267c854e7d2a13-1213828256
api_key: f98456721bfd47d95adcee7cb2f37a11

http://api.ping.fm/v1/user.validate
app & api

http://api.ping.fm/v1/user.post
api, app, post_method(status), body

--->

<!---<cfhttp method="Post" url="http://api.ping.fm/v1/user.validate" result="pingData">
	<cfhttpparam type="formfield" name="user_app_key" value="1f7ce47f88e93bcb61267c854e7d2a13-1213828256">
	<cfhttpparam type="formfield" name="api_key" value="f98456721bfd47d95adcee7cb2f37a11">
</cfhttp>

<cfdump var="#pingData#">--->

<cfhttp method="Post" url="http://api.ping.fm/v1/user.post" result="pingData">
	<cfhttpparam type="formfield" name="user_app_key" value="1f7ce47f88e93bcb61267c854e7d2a13-1213828256">
	<cfhttpparam type="formfield" name="api_key" value="f98456721bfd47d95adcee7cb2f37a11">
	<cfhttpparam type="formfield" name="post_method" value="status">
	<cfhttpparam type="formfield" name="body" value="had to re-write Ping.fm API code, this is testing the new one.">
</cfhttp>

<cfdump var="#pingData#">