
<table style='width:100%;'>
 <tr>
  <td colspan=2>
	<h2>{t}Generic virus filtering{/t}</h2>
  </td>
 </tr>
 <tr>
  <td style="vertical-align:top;">
	<table>
	 <tr>
	  <td>
	 	{t}Maximum threads{/t}
	  </td>
	  <td>
		<select name="avMaxThreads" title='{t}Select number of maximal threads{/t}'>
		 {html_options options=$ThreadValues selected=$avMaxThreads}
	 	</select>
	  </td>
	 </tr>
	 <tr>
	  <td>
	 	{t}Database mirror{/t}
	  </td>
	  <td>
	  	<input type='text' name='avDatabaseMirror' value='{$avDatabaseMirror}' {$avDatabaseMirrorACL} style='width:220px;'>
	  </td>
	 </tr>
	 <tr>
	  <td>
	 	{t}Http proxy URL{/t}
	  </td>
	  <td>
	  	<input type='text' name='avHttpProxyURL' value='{$avHttpProxyURL}' {$avHttpProxyURLACL} style='width:220px;'>
	  </td>
	 </tr>
	 <tr>
	  <td>
	 	{t}Checks per day{/t}
	  </td>
	  <td>
	  	<input type='text' name='avChecksPerDay' value='{$avChecksPerDay}' {$avChecksPerDayACL}>
	  </td>
	 </tr>
	</table>
 
  </td>
  <td style='border-left:1px solid #A0A0A0;vertical-align:top;'>
  
	<table>
	 <tr>
	  <td>
	  	<input type='checkbox' name='avFlagsD' {$avFlagsDACL} {$avFlagsDCHK} value='1'>
		{t}Enable debugging{/t}
	  </td>
	 </tr>
	 <tr>
	  <td>
	  	<input type='checkbox' name='avFlagsS' {$avFlagsSACL} {$avFlagsSCHK} value='1'>
		{t}Enable mail scanning{/t}
	  </td>
	 </tr>
	</table>
  </td>
 </tr>
 <tr>
  <td colspan=2>
   <p class='seperator'>&nbsp;</p>
	<h2>{t}Archive scanning{/t}</h2> 
  </td>
 </tr>
 <tr>
  <td  style="vertical-align:top;width:50%;">
	<table>
	 <tr>
	  <td>{t}Maximum file size{/t}
	  </td>
	  <td>
	   <input name='avArchiveMaxFileSize' value='{$avArchiveMaxFileSize}' {$avArchiveMaxFileSizeACL} >
	  </td>
	 </tr>
	 <tr>
	  <td>{t}Maximum recursion{/t}
	  </td>
	  <td>
	   <input name='avArchiveMaxRecursion' value='{$avArchiveMaxRecursion}' {$avArchiveMaxRecursionACL} >
	  </td>
	 </tr>
	 <tr>
	  <td>{t}Maximum compression ratio{/t}
	  </td>
	  <td>
	   <input name='avArchiveMaxCompressionRatio' value='{$avArchiveMaxCompressionRatio}' {$avArchiveMaxCompressionRatioACL} >
	  </td>
	 </tr>
	</table>
  
  </td>
  <td style='border-left:1px solid #A0A0A0;vertical-align:top;'>
	<table>
	 <tr>
	  <td>
	  	<input type='checkbox' name='avFlagsA' {$avFlagsAACL} {$avFlagsACHK} value='1'>
		{t}Enable scanning of archives{/t}
	  </td>
	 </tr>
	 <tr>
	  <td>
	  	<input type='checkbox' name='avFlagsE' {$avFlagsEACL} {$avFlagsECHK} value='1'>
		{t}Block encrypted archives{/t}
	  </td>
	 </tr>
	</table>
  
  </td>
 </tr>
</table>
<input type='hidden' name='goVirusServer' value='1'>
{if !$servtabs}
<p class='seperator'>&nbsp;</p>
<p>
<div style="width:100%; text-align:right;">
    <input type='submit' name='SaveService' value='{t}Save{/t}'>
    &nbsp;
    <input type='submit' name='CancelService' value='{t}Cancel{/t}'>
</div>
</p>
{/if}

