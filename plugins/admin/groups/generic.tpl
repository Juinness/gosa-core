<table summary="" style="width:100%;">
 <tr>
  <td style="width:50%; vertical-align:top;">
   <input type="hidden" name="groupedit" value="1">
   <table summary="" style="width:100%">
    <tr>
     <td><LABEL for="cn">{t}Group name{/t}</LABEL>{$must}</td>
     <td>
       <input id="cn" name="cn" size=25 maxlength=60 {$cnACL} value="{$cn}" title="{t}Posix name of the group{/t}">
     </td>
    </tr>
    <tr>
     <td><LABEL for="description"> {t}Description{/t}</LABEL></td>
     <td><input id="description" name="description" size=40 maxlength=80 {$descriptionACL} value="{$description}" title="{t}Descriptive text for this group{/t}">
     </td>
    </tr>
    <tr>
      <td colspan=2> <div style="height:15px;"></div> </td>
    </tr>
    <tr>
     <td><LABEL for="base">{t}Base{/t}</LABEL>{$must}</td>
     <td>
      <select id="base" size="1" name="base" {$baseACL} title="{t}Choose subtree to place group in{/t}">
       {html_options options=$bases selected=$base_select}
      </select>
		{if $baseACL==""}
			<input type="image" name="chooseBase" src="images/folder.png" class="center" title="{t}Select a base{/t}">
		{else}
			<img src="images/folder_gray.png" class="center" title="{t}Select a base{/t}">
		{/if}
     </td>
    </tr>
    <tr>
      <td colspan=2> <div style="height:15px; width:100%; border-bottom:1px solid #909090;"></div> </td>
    </tr>
    <tr>
      <td colspan=2> <div style="height:15px; width:100%;"></div> </td>
    </tr>
    <tr>
     <td colspan=2>
      <input type=checkbox name="force_gid" value="1" title="{t}Normally IDs are autogenerated, select to specify manually{/t}" {$force_gid} {$force_gidACL} onclick="changeState('gidNumber')"><LABEL for="gidNumber">{t}Force GID{/t}</LABEL>
      &nbsp;
      <input name="gidNumber" size=5 maxlength=5 id="gidNumber" {$gidNumberACL} {$forceMode} value="{$gidNumber}" title="{t}Forced ID number{/t}">
     </td>
    </tr>

    {if $samba3 ne ""}
    <tr>
     <td colspan=2>
      <input type=checkbox name="smbgroup" value="1" {$smbgroup} {$smbgroupACL} title="{t}Select to create a samba conform group{/t}">
      <select size="1" name="groupType" {$sambaDomainNameACL}>
       {html_options options=$groupTypes selected=$groupType}
      </select>
      &nbsp;
      <LABEL for="">{t}in domain{/t}</LABEL>
      &nbsp;
      <select id="sambaDomainName" size="1" name="sambaDomainName" {$sambaDomainNameACL}>
       {html_options values=$sambaDomains output=$sambaDomains selected=$sambaDomainName}
      </select>
     </td>
    </tr>
    {/if}
	{if $pickupGroup == "true"}
    <tr>
      <td colspan=2> <div style="height:15px; width:100%; border-bottom:1px solid #909090;"></div> </td>
    </tr>
    <tr>
      <td colspan=2> <div style="height:15px; width:100%;"></div> </td>
    </tr>
    <tr>
     <td colspan=2>
      <input type=checkbox name="fon_group" value="1" {$fon_group} {$fon_groupACL}>{t}Members are in a phone pickup group{/t}
     </td>
    </tr>
	{/if}
	{if $nagios == "true"}
    <tr>
      <td colspan=2> <div style="height:15px; width:100%; border-bottom:1px solid #909090;"></div> </td>
    </tr>
    <tr>
      <td colspan=2> <div style="height:15px; width:100%;"></div> </td>
    </tr>
    <tr>
     <td colspan=2>
      <input type=checkbox name="nagios_group" value="1" {$nagios_group} {$nagios_groupACL}>{t}Members are in a nagios group{/t}
     </td>
    </tr>
	{/if}
   </table>

  </td>
  <td style="border-left:1px solid #A0A0A0">
   &nbsp;
  </td>

  <td style="vertical-align:top;">

   <table summary="" style="width:100%">
    <tr>
     <td style="vertical-align:top; width:50%">
      <b><LABEL for="members">{t}Group members{/t}</LABEL></b>
      <br>
      <select style="width:100%; height:380px;" id="members" name="members[]" size=15 multiple>
       {html_options options=$members}
		<option disabled>&nbsp;</option>
      </select>
      <br>
      <input type=submit name="edit_membership" value="{t}Add{/t}" {$membersACL}>
      &nbsp;
      <input type=submit name="del_users" value="{t}Delete{/t}" {$membersACL}>
     </td>
    </tr> 
   </table>
  </td>

 </tr>
</table>

<!-- Place cursor -->
<script language="JavaScript" type="text/javascript">
  <!-- // First input field on page
  document.mainform.cn.focus();
  -->
</script>
