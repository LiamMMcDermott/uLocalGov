<%@ Page Language="C#" MasterPageFile="../../masterpages/umbracoPage.Master" AutoEventWireup="true" CodeBehind="ErrorPageCheckedOut.aspx.cs" Inherits="Umbraco.Concierge.Dialogs.ErrorPageCheckedOut" %>
<%@ Register TagPrefix="cc1" Namespace="umbraco.uicontrols" Assembly="controls" %>

<asp:Content ContentPlaceHolderID="body" runat="server" ID="cp1">
    <cc1:UmbracoPanel ID="UmbracoPanel1" runat="server" Text="Page is locked" hasMenu="false"
        Height="300" Width="600">
        <cc1:Pane ID="Pane1" runat="server" Style="margin-bottom: 10px;">
        <h3>This item is checked out and locked for editing!</h3>
        <p><strong><asp:Literal ID="nodeName" runat="server"></asp:Literal></strong> has been checked out by 
        <strong><asp:Literal id="userName" runat="server"></asp:Literal></strong> and cannot be edited by another user until checked in.</p>
        <p>This item has been checked out since <asp:Literal ID="lockDate" runat="server"></asp:Literal></p>
        <p>If you're an administrator you can force a check in of this page by right clicking the tree and select 'Check In'.</p>
</cc1:Pane>
</cc1:UmbracoPanel>
</asp:Content>