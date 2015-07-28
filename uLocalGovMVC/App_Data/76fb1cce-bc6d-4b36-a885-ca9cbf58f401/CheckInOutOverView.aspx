<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckInOutOverView.aspx.cs" MasterPageFile="../../masterpages/umbracoPage.master" Inherits="Umbraco.Concierge.plugins.Concierge.CheckInOutOverView" %>

<%@ Register TagPrefix="cc" Namespace="umbraco.uicontrols" Assembly="controls" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
  
  
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
<cc:UmbracoPanel ID="Panel1" hasMenu="false" runat="server" Text="Check-in / Check-out">


<cc:Pane id="overview" runat="server">

  <asp:Literal ID="rp_none" runat="server" Visible="false"><p>No documents currently locked</p></asp:Literal>
  
  <asp:Repeater ID="rp_docs" OnItemDataBound="onTicketBound" runat="server">
    <HeaderTemplate>
    <table>
    <thead>
      <tr>
        <th>Name</th>
        <th>Locked on</th>
        <th>By user</th>
        <th>Unlock</th>
      </tr>
    </thead>
    <tbody>    
    </HeaderTemplate>
    
    <ItemTemplate>
      <tr>
        <td><asp:Literal ID="document" runat="server" /></td>
        <td><asp:Literal ID="lockedOn" runat="server" /></td>
        <td><asp:Literal ID="byUser" runat="server" /></td>
        <td><asp:button ID="unlock" OnCommand="unlock" style="width: 100px;" Text="Unlock" runat="server" /></td>
      </tr>
  
    </ItemTemplate>
    <FooterTemplate>
     </tbody>
     <tfooter>
        <tr><td colspan="3"></td>
        <td>
        <br />
        <asp:button ID="unlock" OnCommand="unlockAll" Text="Unlock all" style="width: 100px;" runat="server" /></td>
        </tr>
     </tfooter>
     </table>
    </FooterTemplate>
</asp:Repeater>

</cc:Pane>

</cc:UmbracoPanel>
</asp:Content>