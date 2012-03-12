<cffunction name="insertJS" output="yes">
	<cfargument name="siteID" type="string" required="yes">

	<cfquery datasource="warpax" name="qGetCode">
		select googleAnalyticsCode
		from members_sites
		where siteID = "#application.siteid#"
	</cfquery>
	
	<script type="text/javascript">
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
	var pageTracker = _gat._getTracker("<cfoutput>#qGetCode.googleAnalyticsCode#</cfoutput>");
	pageTracker._initData();
	pageTracker._trackPageview();
	</script>

</cffunction>