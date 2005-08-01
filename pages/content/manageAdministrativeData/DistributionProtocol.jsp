<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ page import="edu.wustl.catissuecore.util.global.Constants"%>

<head>

<%
	String specimenClassArry[] = (String[]) request.getAttribute(Constants.SPECIMEN_CLASS_LIST);
	String specimenClassIdArry[] = (String[]) request.getAttribute(Constants.SPECIMEN_CLASS_ID_LIST);
	String specimenTypeArry[] = (String[]) request.getAttribute(Constants.SPECIMEN_TYPE_LIST);
	String tissueSiteArry[] = (String[]) request.getAttribute(Constants.TISSUE_SITE_LIST);
	String pathologyStatusArry[] = (String[]) request.getAttribute(Constants.PATHOLOGICAL_STATUS_LIST);
	
    String operation = (String) request.getAttribute(Constants.OPERATION);
    String formName;
    String searchFormName = new String(Constants.DISTRIBUTIONPROTOCOL_SEARCH_ACTION);

    boolean readOnlyValue;
    if (operation.equals(Constants.EDIT))
    {
        formName = Constants.DISTRIBUTIONPROTOCOL_EDIT_ACTION;
        readOnlyValue = false;
    }
    else
    {
        formName = Constants.DISTRIBUTIONPROTOCOL_ADD_ACTION;
        readOnlyValue = false;
    }
%>

<SCRIPT LANGUAGE="JavaScript">
	var ugul = new Array(4);
	ugul[0]="";
	ugul[1]="<%=Constants.UNIT_ML%>";
	ugul[2]="<%=Constants.UNIT_GM%>";
	ugul[3]="<%=Constants.UNIT_CC%>";
	ugul[4]="<%=Constants.UNIT_MG%>";

	function changeUnit(listname,unitspan)
	{
		var i = document.getElementById(listname).selectedIndex;
		document.getElementById(unitspan).innerHTML = ugul[i];
	}
//code for units end
</SCRIPT>

<SCRIPT LANGUAGE="JavaScript">
	var search1='`';
	var insno=0;
</script>
<script language="JavaScript" type="text/javascript" src="jss/javaScript.js"></script>

<SCRIPT LANGUAGE="JavaScript">
<!--
	// functions for add more

	
var subDivRowCount = new Array(10);		// array to hold the row count of the inner block

subDivRowCount[0] = 1;

// variable to count the oter blocks
var insno=0;

function addBlock(div,d0)
{
	//alert("Here "+insno);
	var y = div.innerHTML;
	var z = d0.innerHTML;

	subDivRowCount[insno] = 1;
	insno =insno + 1;

	//alert("insno "+z);
	var mm = z.indexOf('`');
	for(var cnt=0;cnt<mm;cnt++)
	{
		z = z.replace('`',insno);
		mm = z.indexOf('`');
	}
	div.innerHTML = div.innerHTML +z;
}
//-->
</SCRIPT>

<style>
	div#d1
	{
		display:none;
	}
	div#d999
	{
	 	display:none;
	}
</style>
</head>
<body>

<html:errors />
<html:form action="<%=Constants.DISTRIBUTIONPROTOCOL_ADD_ACTION%>">

<!-- table 1 -->
<table summary="" cellpadding="0" cellspacing="0" border="0" class="contentPage" width="100%">
	<logic:notEqual name="operation" value="<%=Constants.ADD%>">
		<!-- ENTER IDENTIFIER BEGINS-->
		<br />
		<tr>
			<td>
			<!-- table 2 -->
				<table summary="" cellpadding="3" cellspacing="0" border="0">
					<tr>
						<td class="formTitle" height="20" colspan="3">
							<bean:message key="distributionprotocol.searchTitle" />
						</td>
					</tr>

					<tr>
						<td class="formRequiredNotice" width="5">*</td>
						<td class="formRequiredLabel">
							<label for="identifier">
								<bean:message key="distributionprotocol.identifier" />
							</label>
						</td>
						<td class="formField">
							<html:text styleClass="formFieldSized" size="30" styleId="identifier" property="identifier" />
						</td>
					</tr>
					<%
        				String changeAction = "setFormAction('" + searchFormName
                							  + "');setOperation('" + Constants.SEARCH + "');";
			        %>
					<tr>
						<td align="right" colspan="3">
						<!-- table 3 -->
						<table cellpadding="4" cellspacing="0" border="0">
							<tr>
								<td>
									<html:submit styleClass="actionButton" value="Search" onclick="<%=changeAction%>" />
								</td>
							</tr>
						</table>  <!-- table 3 end -->
						</td>
					</tr>

				</table>  <!-- table 2 end -->
				</td>
			</tr>
			<!-- ENTER IDENTIFIER ENDS-->
		</logic:notEqual>


		<!-- NEW DISTRIBUTIONPROTOCOL ENTRY BEGINS-->
		<tr>
		<td colspan="3">
		<!-- table 4 -->
			<table summary="" cellpadding="3" cellspacing="0" border="0" width="96%">
				<tr>
					<td><html:hidden property="operation" value="<%=operation%>" /></td>
				</tr>

				<logic:notEqual name="operation" value="<%=Constants.SEARCH%>">
					<tr>
						<td class="formMessage" colspan="4">* indicates a required field</td>
					</tr>
<!-- page title -->					
					<tr>
						<td class="formTitle" height="20" colspan="4">
							<bean:message key="distributionprotocol.title" />
						</td>
					</tr>
					
<!-- principal investigator -->	
					<tr>
						<td class="formRequiredNotice" width="5">*</td>
						<td class="formRequiredLabel">
							<label for="principalInvestigatorId">
								<bean:message key="distributionprotocol.principalinvestigator" />
							</label>
						</td>
						
						<td class="formField">
							<html:select property="principalInvestigatorId" styleClass="formFieldSized" styleId="principalInvestigatorId" size="1">
								<html:options collection="userList" labelProperty="name" property="value"/>
							</html:select>
							&nbsp;
							<html:link page="/User.do?operation=add">
		 						<bean:message key="buttons.addNew" />
	 						</html:link>
						</td>
					</tr>

<!-- title -->						
					<tr>
						<td class="formRequiredNotice" width="5">*</td>
						<td class="formRequiredLabel">
							<label for="title">
								<bean:message key="distributionprotocol.protocoltitle" />
							</label>
						</td>
						<td class="formField" colspan=2>
							<html:text styleClass="formFieldSized" size="30" styleId="title" property="title" readonly="<%=readOnlyValue%>" />
						</td>
					</tr>

<!-- short title -->						
					<tr>
						<td class="formRequiredNotice" width="5">&nbsp;</td>
						<td class="formLabel">
							<label for="shortTitle">
								<bean:message key="distributionprotocol.shorttitle" />
							</label>
						</td>
						<td class="formField" colspan=2>
							<html:text styleClass="formFieldSized" size="30" styleId="shortTitle" property="shortTitle" readonly="<%=readOnlyValue%>" />
						</td>
					</tr>
					
<!-- irb id -->						
					<tr>
						<td class="formRequiredNotice" width="5">&nbsp;</td>
						<td class="formLabel">
							<label for="irbID">
								<bean:message key="distributionprotocol.irbid" />
							</label>
						</td>
						<td class="formField" colspan=2>
							<html:text styleClass="formFieldSized" size="30" styleId="irbID" property="irbID" readonly="<%=readOnlyValue%>" />
						</td>
					</tr>

<!-- startdate -->						
					<tr>
						<td class="formRequiredNotice" width="5">&nbsp;</td>
						<td class="formLabel">
							<label for="startDate">
								<bean:message key="distributionprotocol.startdate" />
							</label>
						</td>
			
						<td class="formField" colspan=2>
							<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
						 	<html:text styleClass="formDateSized" size="35" styleId="startDate" property="startDate" readonly="true"/>
							<a href="javascript:show_calendar('distributionProtocolForm.startDate','','','MM-DD-YYYY');">
								<img src="images\calendar.gif" width=24 height=22 border=0>
							</a>
						</td>
					</tr>

<!-- enddate -->						
					<tr>
						<td class="formRequiredNotice" width="5">&nbsp;</td>
						<td class="formLabel">
							<label for="endDate">
								<bean:message key="distributionprotocol.enddate" />
							</label>
						</td>
			
						 <td class="formField" colspan=2>
						 <div id="enddateDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
						 <html:text styleClass="formDateSized" size="35" styleId="endDate" property="endDate" readonly="true"/>
							<a href="javascript:show_calendar('distributionProtocolForm.endDate','','','MM-DD-YYYY');">
								<img src="images\calendar.gif" width=24 height=22 border=0>
							</a>
						 </td>
					</tr>

<!-- no of participants -->						
					<tr>
						<td class="formRequiredNotice" width="5">&nbsp;</td>
						<td class="formLabel">
							<label for="enrollment">
								<bean:message key="distributionprotocol.participants" />
							</label>
						</td>
						<td class="formField" colspan=2>
							<html:text styleClass="formFieldSized" size="30" styleId="enrollment" property="enrollment" readonly="<%=readOnlyValue%>" />
						</td>
					</tr>

<!-- descriptionurl -->						
					<tr>
						<td class="formRequiredNotice" width="5">&nbsp;</td>
						<td class="formLabel">
							<label for="descriptionURL">
								<bean:message key="distributionprotocol.descriptionurl" />
							</label>
						</td>
						<td class="formField" colspan=2>
							<html:text styleClass="formFieldSized" size="30" styleId="descriptionURL" property="descriptionURL" readonly="<%=readOnlyValue%>" />
						</td>
					</tr>



<!-- activitystatus -->	
					<%
						if(formName == Constants.DISTRIBUTIONPROTOCOL_EDIT_ACTION)
						{
					%>
							<tr>
								<td class="formRequiredNotice" width="5">&nbsp;</td>
								<td class="formLabel">
									<label for="activityStatus">
										<bean:message key="distributionprotocol.activitystatus" />
									</label>
								</td>
								<td class="formField" colspan=2>
										<html:select property="activityStatus" styleClass="formFieldSized" styleId="activityStatus" size="1">
								        	<html:option value="Type1">Activity Status</html:option>
										</html:select>
								</td>
							</tr>
					<%
						}
					%>
							
				</table> 	<!-- table 4 end -->
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr> <!-- SEPARATOR -->
</table>


<table summary="" cellpadding="0" cellspacing="0" border="0" class="contentPage" width="100%">
	<tr><td>
		<table summary="" cellpadding="3" cellspacing="0" border="0" width="100%">
			<tr>
				<td class="formTitle">
						<b>SPECIMEN REQUIREMENTS</b>
				</td>
				<td align="right" class="formTitle">		
						<html:button property="addDistributionProtocolEvents" styleClass="actionButton" onclick="addBlock(outerdiv,d1)">Add More</html:button>
				</td>
			</tr>
			<TR> <!-- SUB TITLES -->
		        <td class="formLeftSubTableTitle">
		    		<bean:message key="distributionprotocol.specimennumber" />
		        </td>
		        <td class="formLeftSubTableTitle">
		        	<bean:message key="distributionprotocol.specimenclass" />
		        </td>
		        <td class="formLeftSubTableTitle">
		        	<bean:message key="distributionprotocol.specimentype" />
		        </td>
		        <td class="formLeftSubTableTitle">
		        	<bean:message key="distributionprotocol.specimensite" />
			    </td>
		        <td  class=formLeftSubTableTitle>
		    		<bean:message key="distributionprotocol.pathologystatus" />
			    </td>
		        <td class=formLeftSubTableTitle>
		        	<bean:message key="distributionprotocol.quantity" />
		        </td>
			</TR><!-- SUB TITLES END -->		 
		</table>
	</td></tr>
</table>

<!--  outermostdiv start --><!-- outer div tag  for entire block -->
<div id="outerdiv"> 
	
</div>	<!-- outermostdiv  -->

<table width="100%">		
	<!-- to keep -->
		<tr>
			<td align="right" colspan="3">
				<%
					String changeAction = "setFormAction('" + formName + "');";
		        %> 
				
				<!-- action buttons begins -->
				<!-- table 6 -->
				<table cellpadding="4" cellspacing="0" border="0" >
					<tr>
						<td>
							<html:submit styleClass="actionButton" value="Submit" onclick="<%=changeAction%>" />
						</td>
						<td>
							<html:reset styleClass="actionButton" />
						</td>
					</tr>
				</table>  <!-- table 6 end -->
				<!-- action buttons end -->
			</td>
		</tr>
	</logic:notEqual>

</table>
</html:form>
<hr>



<html:form action="ApproveUser.do">
<div id="d1">

	<table summary="" cellpadding="0" cellspacing="0" border="0" class="contentPage" width="100%">
		<tr><td>
			<table summary="" cellpadding="3" cellspacing="0" border="0" width="100%">
				<TR>	<!-- SPECIMEN REQ DATA -->
				    <td class="tabrightmostcell">`.</td>
				    <td class="formField">		
				    	<html:select property="value(SpecimenRequirement:`_specimenClass)" 
										styleClass="formFieldSized10" 
										styleId="value(SpecimenRequirement:`_specimenClass)" size="1"
										onchange="changeUnit('value(SpecimenRequirement:`_specimenClass)',
				       						'value(SpecimenRequirement:`_unitspan)')">
							<html:options name="<%=Constants.SPECIMEN_CLASS_ID_LIST%>" labelName="<%=Constants.SPECIMEN_CLASS_LIST%>"/>
						</html:select>
				    </td>
				    
				    <td class="formField">
				    	<html:select property="value(SpecimenRequirement:`_specimenType)" 
										styleClass="formFieldSized10" 
										styleId="value(SpecimenRequirement:`_specimenType)" size="1">
							<html:options name="<%=Constants.SPECIMEN_TYPE_LIST%>" labelName="<%=Constants.SPECIMEN_TYPE_LIST%>"/>
						</html:select>
				    </td>
				    
				    <td class="formField">
				    	<html:select property="value(SpecimenRequirement:`_tissueSite)" 
										styleClass="formFieldSized10" 
										styleId="value(SpecimenRequirement:`_tissueSite)" size="1">
							<html:options name="<%=Constants.TISSUE_SITE_LIST%>" labelName="<%=Constants.TISSUE_SITE_LIST%>"/>
						</html:select>
				    
				        <a href="#">
							<img src="images\Tree.gif" border="0" width="26" height="22"></a>
					</td>
					
				    <td class="formField">
				    	<html:select property="value(SpecimenRequirement:`_pathologyStatus)" 
										styleClass="formFieldSized10" 
										styleId="value(SpecimenRequirement:`_pathologyStatus)" size="1">
							<html:options name="<%=Constants.PATHOLOGICAL_STATUS_LIST%>" labelName="<%=Constants.PATHOLOGICAL_STATUS_LIST%>"/>
						</html:select>
				    </td>
				    
				    <td class="formField">
				    	<html:text styleClass="formFieldSized5" size="30" 
				    			styleId="value(SpecimenRequirement:`_quantityIn)" 
				    			property="value(SpecimenRequirement:`_quantityIn)" 
				    			readonly="<%=readOnlyValue%>" />
				    	<span id="value(SpecimenRequirement:`_unitspan)">
				    		&nbsp;
						</span>
					</td>
				</TR>	<!-- SPECIMEN REQ DATA END -->
				</table>
		</td></tr>
	</table>


</div>
</html:form>

<SCRIPT LANGUAGE="JavaScript">
	addBlock(outerdiv,d1);
</Script>

</body>