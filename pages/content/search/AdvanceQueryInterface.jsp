<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>

<head>
	<script language="JavaScript">

	</script>
</head>

<html:errors />
<% 
	//String operation = request.getAttribute("operation");
%>
<table summary="" cellpadding="0" cellspacing="0" border="0" class="contentPage" width="100%" height="100%">
	<tr width="100%">
		<td height="69%">
			<iframe name="searchPageFrame" id="searchPageFrame" src="/catissuecore/ParticipantAdvanceSearch.do?pageOf=pageOfParticipantAdvanceSearch" width="100%" height="100%" frameborder="0" scrolling="auto">
			</iframe>
		</td>
	</tr>
	
	<tr width="100%">
		<td height="2%">
			&nbsp;
		</td>
	</tr>
	

	<tr width="100%">
		<td height="29%">
			<iframe name="queryFrame" id="queryFrame" src="/catissuecore/AdvanceQueryView.do" width="100%" height="100%" frameborder="0" scrolling="auto">
			</iframe>
		</td>
	</tr>
</table>