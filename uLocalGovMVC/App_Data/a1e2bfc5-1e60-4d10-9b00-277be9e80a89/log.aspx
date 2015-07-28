<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="../../masterpages/umbracoPage.master" CodeBehind="log.aspx.cs" Inherits="Umbraco.Concierge.log" %>
<%@ Register TagPrefix="cc" Namespace="umbraco.uicontrols" Assembly="controls" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
  Namespace="System.Web.UI" TagPrefix="asp" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    h1{border-bottom: 1px solid #999; padding: 5px; margin-bottom: 5px;}
    h3{margin-left: 0px;}
    .docProperty{margin-bottom: 15px; border-bottom: 1px solid #999; padding-bottom: 5px;}
    .message{border: 1px solid #d9d7d7; padding: 3px; margin-bottom: 10px;}
    .message img{border: 1px solid #d9d7d7; margin: 0px 0px 15px 15px; float: right;}
    table.logTable a{color: blue;}
    
    tr.extendedComment{}
    tr.extendedComment td{display: none; padding: 10px; padding-bottom: 15px;} 
    tr.extendedComment code{display: block; padding: 5px; background:#FFF6BF;color:#514721;}
    tr.extendedComment em{background: #CFF7FF; display: inline;}
    
    th{width: auto !Important;}
    th.type{width: 70px !Important;}
    th.date{width: 100px !Important;}
    
    tbody span.Error, tbody span.NotFound, tbody span.LoginFailure{color: red;}
    tbody span.Debug{color: orange;}
    tbody span.Publish, tbody span.Save, tbody span.Open, tbody span.New {color: Green;}
    
    #entriesArea{display: none;}
    
    </style>
    
    <script type="text/javascript">
        
      jQuery(document).ready(function(){
         var nextPage = 1;
      });
        
      function toggleComment(id) {
        var comment = document.getElementById(id);
        if (comment.style.display == 'none' || comment.style.display == '')
          comment.style.display = 'table-row';
        else
          comment.style.display = 'none';
      }
      
     
      function fetchrecords(page){
        var type = jQuery("#<%= ddl_logtype.ClientID %>").val(); 
        var user = jQuery("#<%= ddl_user.ClientID %>").val();
        var search = jQuery("#<%= tb_commentSearch.ClientID %>").val();
        var node = jQuery("#nodePicker input").val();
        
         nextPage = page + 1;
         
         jQuery.get("logService.aspx?page=" + page + "&nodeId=" + node + "&userid=" + user + "&type=" + type + "&search=" + search, function(data){
           var conten = jQuery(data);           
             
           var table = jQuery("#entries");
           var tbody = jQuery("tbody" , table);
                        
           jQuery("#moreButton").show();
           jQuery("#entriesArea").show();
           
           if(page == 1) 
             tbody.html(conten);
           else          
             tbody.append(conten);
            
            var rows = jQuery("tr.row",tbody).length;
            
            if(rows < ( page * 20))
                jQuery("#moreButton").hide();
         });    
      }   
      
    
        
    </script>
</asp:Content>
  
<asp:Content ContentPlaceHolderID="body" runat="server">
<cc:UmbracoPanel ID="Panel1" Width="552px" Height="392px" hasMenu="false" Text="Search the umbraco log" runat="server">
    <cc:Pane id="t1_1" runat="server" Text="Filtering">
        <cc:PropertyPanel runat="server" Text="Filter by type:">
            <asp:DropDownList ID="ddl_logtype" CssClass="guiInputText umbEditorTextField" runat="server"/>
        </cc:PropertyPanel>
        
        <cc:PropertyPanel ID="PropertyPanel1" runat="server" Text="Filter by user:">
           <asp:DropDownList ID="ddl_user" CssClass="guiInputText umbEditorTextField" runat="server"/>
        </cc:PropertyPanel>
        
        <cc:PropertyPanel ID="PropertyPanel2" runat="server" Text="Filter by page:">
            <span id="nodePicker"><asp:PlaceHolder ID="contentPickerPlaceHolder" runat="server" /></span>
        </cc:PropertyPanel>
    </cc:Pane>
    
     <cc:Pane ID="Pane1" runat="server" Text="Search">
     <cc:PropertyPanel ID="PropertyPanel3" runat="server" Text="Seach log comments<br /><small>(optional)</small>">
            <asp:TextBox ID="tb_commentSearch" CssClass="guiInputText umbEditorTextField" runat="server" />
        </cc:PropertyPanel>
        
         <cc:PropertyPanel ID="PropertyPanel4" runat="server" Text=" ">
            <button onclick="fetchrecords(1); return false;">Retrieve entries</button>
        </cc:PropertyPanel>
    
    </cc:Pane>
    
    <div id="entriesArea">
    <cc:Pane id="t1_2" runat="server">

    <table cellspacing="5" style="width: 100%" id="entries">
        <thead>
            <tr>
            <th class="type">Type</th>
            <th class="dateTime">Date/time</th>
            <th class="page">Page</th>
            <th class="user">User</th>
            <th class="comment">Comment</th></tr>
        </thead>
        <tbody>
            
        </tbody>
        </table>
        
        <div id="moreButton" style="padding: 10px; display: none; font-size: 12px; text-align: center"><a href="#" onclick="fetchrecords(nextPage); return false;">Show 20 additonal entries</a></div>        
    
    </cc:Pane>
    </div>
   </cc:UmbracoPanel>
</asp:Content>