<cfoutput><!--- HELPBOX --->#renderView("tags/help")#<form name="updateform" id="updateform" action="javascript:doFormEvent('#Event.getValue("xehDoSave")#','content',document.updateform)" onSubmit="return confirmit()" method="post"><div class="maincontentbox">	<div class="contentboxes_header">		<div class="contentboxes_title"><img src="images/icons/fileencoding_icon.gif" align="absmiddle" />&nbsp; General Settings</div>	</div>	<!--- Messagebox --->	#getPlugin("messagebox").renderit()#	<div class="contentboxes">	<p>Below are the ColdBox's general settings that you can change. Be very careful when changing the Coldspring bean factory	path, since this setting can affect any IoC application.	</p>	<br>		<div style="margin: 5px">	    <table width="100%" border="0" cellspacing="0" cellpadding="5" class="tablelisting">	      	      <tr>			<th>Setting</th>			<th>Value</th>		  </tr>				 <tr bgcolor="##f5f5f5">	     	<td align="right" width="40%" style="border-right:1px solid ##ddd">	     	<strong>Event Name</strong>	     	</td>	     	<td>	     	<input type="text" name="EventName" value="#Event.getValue("EventName")#" size="20" maxlength="20">	     	</td>	     </tr>	     	     <tr>	     	<td align="right" width="40%" style="border-right:1px solid ##ddd">	     	<strong>File Character Set</strong>	     	</td>	     	<td>	     	<select name="DefaultFileCharacterSet" style="width:100px">	     		<cfloop from="1" to="#listlen(Event.getValue("AvailableCFCharacterSets"))#" index="counter">				<option value="#listgetat(Event.getValue("AvailableCFCharacterSets"),counter)#"				        <cfif listgetat(Event.getValue("AvailableCFCharacterSets"),counter) eq Event.getValue("DefaultFileCharacterSet")>selected</cfif>>#listgetat(Event.getValue("AvailableCFCharacterSets"),counter)#</option>	     		</cfloop>	     	</select>			(Used by the Utilities plugin)	     	</td>	     </tr>	     <tr bgcolor="##f5f5f5">	     	<td align="right" width="40%" style="border-right:1px solid ##ddd">	     	<strong>Messagebox storage</strong>	     	</td>	     	<td>	     	<select name="MessageBoxStorage" style="width:100px">	     		<option value="session" <cfif event.getValue("MessageBoxStorage") eq "session">selected</cfif>>Session</option>	     		<option value="client"  <cfif event.getValue("MessageBoxStorage") eq "client">selected</cfif>>Client</option>	     	</select>	     	</td>	     </tr>	     <tr>	     	<td align="right" width="40%" style="border-right:1px solid ##ddd">	     	<strong>Coldspring Bean Factory Path:</strong>	     	</td>	     	<td>	     	<input type="text" name="ColdspringBeanFactory" value="#Event.getValue("ColdspringBeanFactory")#" size="50" maxlength="50">	     	</td>	     </tr>	     	      <tr bgcolor="##f5f5f5">	     	<td align="right" width="40%" style="border-right:1px solid ##ddd">	     	<strong>LightWire Bean Factory Path:</strong>	     	</td>	     	<td>	     	<input type="text" name="LightWireBeanFactory" value="#Event.getValue("LightWireBeanFactory")#" size="50" maxlength="50">	     	</td>	     </tr>        </table>		</div>		<div align="center" style="margin-top:30px">			<a class="action" href="javascript:document.updateform.submit()" title="Submit Changes">				<span>Submit Changes</span>			</a>		</div>	</div></div></form></cfoutput>