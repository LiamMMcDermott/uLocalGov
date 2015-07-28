<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="../../masterpages/umbracoPage.master" CodeBehind="reporting.aspx.cs" Inherits="Umbraco.Concierge.plugins.Concierge.reporting" %>

<%@ Register TagPrefix="cc" Namespace="umbraco.uicontrols" Assembly="controls" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript" src="swfobject.js"></script>

<script type="text/javascript">
  <asp:literal runat="server" id="lt_chart_js" />
</script>

</asp:Content>
  
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

<cc:UmbracoPanel ID="Panel1" Text="Report" runat="server">

<cc:Pane ID="pane" runat="server" Text="Chart name">

<p><asp:Literal ID="lt_desc" runat="server" /></p>

<asp:PlaceHolder ID="ph_properties" runat="server" Visible="false">
<h4 class="divider">Properties</h4>
</asp:PlaceHolder>

<asp:Repeater ID="rp_charts" runat="server" OnItemDataBound="onChartBound">

<HeaderTemplate>
<h4 class="divider">Data</h4>
</HeaderTemplate>

<ItemTemplate>

<cc:PropertyPanel ID="pp" runat="server">
    <div style="margin-left: 20px; border: 1px solid #ccc;" id='<asp:Literal ID="lt_id" runat="server" />'></div>
</cc:PropertyPanel>

</ItemTemplate>
</asp:Repeater>
</cc:Pane> 


</cc:UmbracoPanel>

</asp:Content>