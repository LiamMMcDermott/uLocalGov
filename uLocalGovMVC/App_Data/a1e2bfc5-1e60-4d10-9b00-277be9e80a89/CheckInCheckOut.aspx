<%@ Page Language="C#" MasterPageFile="../../masterpages/umbracoDialog.Master" AutoEventWireup="true" CodeBehind="LockUnLock.aspx.cs" Inherits="Umbraco.Concierge.Dialogs.LockUnLock" %>
<%@ Register TagPrefix="cc1" Namespace="umbraco.uicontrols" Assembly="controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

<cc1:Feedback ID="feedback1" runat="server" />

<input class="guiInputButton" type="button" runat="server" id="_bt" visible="false" value="Ok" />

<cc1:Pane ID="pane_form" runat="server">
<cc1:PropertyPanel id="lockPanel" runat="server">
<h3>Check out <asp:Literal ID="nodeName" runat="server"></asp:Literal></h3>
<p>Click the button below to check out '<asp:Literal ID="nodeName2" runat="server"></asp:Literal>' for 
exclusive editing. As this will prevent other users from edit the item, you should remember to check in again once you're done with your 
changes.</p>
<p>You currently have <asp:Literal ID="activeTickets" runat="server"></asp:Literal> other item(s) checked out for editing.</p>
<asp:Button id="lockButton" runat="server" text="Check Out" 
        onclick="lockButton_Click" />&nbsp; <em>or </em>&nbsp; <a href="#" style="color: blue" onclick="<%= closeModal %>">
        <%=umbraco.ui.Text("general", "cancel", umbraco.BasePages.UmbracoEnsuredPage.CurrentUser)%>
</cc1:PropertyPanel>

<cc1:PropertyPanel id="unlockPanel" Visible="false" runat="server">
<h3>Check in <asp:Literal ID="nodeName3" runat="server"></asp:Literal></h3>
<p>Click the button below to check in '<asp:Literal ID="nodeName4" runat="server"></asp:Literal>'. This will enable other users to edit the item.</p>
<asp:Button id="unlockButton" runat="server" text="Check In" 
        onclick="unlockButton_Click" />&nbsp; <em>or </em>&nbsp; <a href="#" style="color: blue" onclick="<%= closeModal %>">
        <%=umbraco.ui.Text("general", "cancel", umbraco.BasePages.UmbracoEnsuredPage.CurrentUser)%>
</cc1:PropertyPanel>

</cc1:Pane>
</asp:Content>