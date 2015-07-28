<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="../../masterpages/umbracoDialog.Master" CodeBehind="Dependencies.aspx.cs" Inherits="Umbraco.Concierge.plugins.Dependencies" %>

<%@ Register TagPrefix="cc1" Namespace="umbraco.uicontrols" Assembly="controls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

<cc1:Feedback ID="feedback1" runat="server" />

<cc1:Pane ID="p_dependencies" runat="server">
<cc1:PropertyPanel runat="server">

<p><asp:Literal ID="lt_depenText" runat="server" Text="Items depending on <strong>¤</trong>, if you edit <strong>¤</strong> ensure it is compatible with the below list" /></p>

<div id="deps" >
  <asp:Literal ID="lt_deps" runat="server" />
</div>

</cc1:PropertyPanel>

</cc1:Pane>

<div style="padding-top: 15px;">
<input class="guiInputButton" type="button"  id="_bt" value="Ok" onclick="<%= closeModal %>"/>
</div>

<script type="text/javascript">
  jQuery(document).ready(function() {

    adjustList()

    jQuery("a.editorLink").click(function() {

      parent.right.document.location.href = this.href;
      <%= closeModal %>;

    });

    jQuery("a.expand").click(function() {

      var l = jQuery(this);
      jQuery("#" + l.attr('rel')).toggle();
      l.toggleClass("expanded");

      if (l.hasClass("expanded")) {
        l.text("Hide child dependencies");
      } else {
        l.text("Show child dependencies");
      }

      adjustList();

      return false;
    });

  });

  function adjustList() {
    var deps = jQuery("#deps");

    if (deps.height() > 350 && deps.css("overflow") != "auto" ) {
      deps.css("overflow", "auto");
      deps.height(350);
    } else {
    deps.css("overflow", "visible");
    deps.css("height", "auto");
    }
  
  }
</script>

</asp:Content>