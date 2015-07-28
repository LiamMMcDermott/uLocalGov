<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="../../masterpages/umbracoDialog.master" CodeBehind="documentationAddComment.aspx.cs" Inherits="Umbraco.Concierge.documentationAddComment" %>
<%@ Register TagPrefix="cc" Namespace="umbraco.uicontrols" Assembly="controls" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
  Namespace="System.Web.UI" TagPrefix="asp" %>
  
<asp:Content ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
  <asp:literal runat="server" id="js"/> 
</script>
</asp:Content>


<asp:Content ContentPlaceHolderID="body" runat="server">

<cc:Pane runat="server" id="Pane1">
    <cc:PropertyPanel runat="server">
      <asp:TextBox ID="tb_comment" style="width: 480px; height: 200px; padding: 5px;" runat="server" TextMode="MultiLine"></asp:TextBox>
    </cc:PropertyPanel>
</cc:Pane>

<div style="padding-top: 15px;">
          <asp:Button ID="bt_submit" OnClick="saveComment" runat="server" Text="Save" /> <em>or</em> <a onclick="<%= closeModal %>" href="#">cancel</a>
</div>
</asp:Content>