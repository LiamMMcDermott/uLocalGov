<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="../../masterpages/umbracoPage.master" CodeBehind="Log4NetLog.aspx.cs" Inherits="Umbraco.Concierge.plugins.Concierge.Log4NetLog" %>
<%@ Register TagPrefix="cc" Namespace="umbraco.uicontrols" Assembly="controls" %>
<asp:Content ContentPlaceHolderID="body" runat="server">
<style type="text/css">
    .debug
    {
        background-color: Green;
        color: White;
    }
    .info
    {
        background-color: Blue;
        color: White;
    }
    .error
    {
        background-color: Orange;
    }
    .fatal
    {
        background-color: red;
        color: White;
    }
    .box
    {
        border-bottom: 2px solid white;
        border-top: 2px solid white;
    }
</style>
    <cc:UmbracoPanel ID="Panel1" Width="552px" Height="392px" hasMenu="false" Text="View the umbraco log" runat="server">

<asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </cc:UmbracoPanel>
    </asp:Content>

