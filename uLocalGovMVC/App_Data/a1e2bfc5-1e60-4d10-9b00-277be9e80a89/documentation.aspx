<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="../../masterpages/umbracoPage.master" CodeBehind="documentation.aspx.cs" Inherits="Umbraco.Concierge._Default" %>

<%@ Register TagPrefix="cc" Namespace="umbraco.uicontrols" Assembly="controls" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
  
<asp:Content ContentPlaceHolderID="head" runat="server">
    <style type="text/css" />
           
    <asp:literal id="js" runat="server" />  
    </style>
    
    
    <script type="text/javascript">
      function redirect() {
        document.location = document.location + "&load=true";
      }
    </script>
    
</asp:Content>  

<asp:Content ContentPlaceHolderID="body" runat="server">

 <asp:PlaceHolder ID="ph_loader" runat="server">
        <div style="margin: auto; padding-top: 25%; text-align: center">
          <img src="/umbraco_client/images/progressBar.gif" alt="loading..." style="margin: auto;" /><br />
          <small>Loading documentation...</small>
          
          <script type="text/javascript">
            redirect();
          </script>
          
        </div>
</asp:PlaceHolder>
      
      

<cc:UmbracoPanel ID="Panel1" hasMenu="false" Visible="false" runat="server" Text="Documentation">
    
    <asp:PlaceHolder ID="trialNotice" runat="server" Visible="false">
      <div class="notice">
      <p>
        Hi there, you are currently using a trial version of Concierge. We sincerly hope you like using this software and would like to become a pro customer.
      </p>
      <p>
        You can purchase umbraco pro, which includes Concierge, and Courier, <a href="http://umbraco.org/products/umbraco-pro" target="_blank">on umbraco.org</a>
      </p>
      </div>
    </asp:PlaceHolder>
      
    <div class="intro">
    
    <cc:Pane id="overview" runat="server">
         <a title="Top"></a>
          
         <h4 class="divider" style="margin-top: 0px;">Overview <asp:Literal ID="lt_printLink" runat="server"/></h4>
            <p>
               <asp:Literal ID="lt_description" runat="server"/>
            </p>
         
        <h4 class="divider">Summary</h4>
            <p>
               <asp:Literal ID="lt_summary" runat="server"/>
            </p>
    </cc:Pane>
      
    </div>
      
      <asp:Repeater ID="rp_docs" runat="server"  OnItemDataBound="onSectionBound">
      <ItemTemplate>
            
            <asp:literal ID="sectionHeader" runat="server" />
            
            <asp:Repeater ID="items" OnItemDataBound="onItemBound" runat="server">
              <ItemTemplate>
                    <cc:Pane ID="cc_pane" runat="server">
                    
                    <h4 class="divider" style="margin-top: 0px;">Developer Comments <asp:Literal ID="lt_commentLink" runat="server" /></h4>
                    <p class="comments">
                      <asp:Literal ID="lt_comments" runat="server" Text="No comments added yet" />
                    </p>
                                                                              
                    <asp:PlaceHolder ID="ph_properties" Visible="false" runat="server">
                    <h4 class="divider">Properties</h4>
                    </asp:PlaceHolder>                    
                                                            
                    <asp:PlaceHolder ID="ph_dependencies" Visible="false" runat="server">
                    <h4 class="divider">Dependencies</h4>
                    
                    <p><asp:Literal ID="lt_depenText" runat="server" Text="Items depending on <strong>¤</strong>, if you edit <strong>¤</strong> ensure it is compatible with the below list" /></p>
                      <asp:Literal ID="lt_depList" runat="server" />
                    </asp:PlaceHolder>
                  </cc:Pane>
              </ItemTemplate>
            </asp:Repeater>   
            
      </ItemTemplate>
      </asp:Repeater>
           
      
      <asp:Panel ID="footer" runat="server" Visible="false"></asp:Panel>
      
    </cc:UmbracoPanel>
    
    
    
<script type="text/javascript">
      jQuery(document).ready(function() {


        jQuery("a.expand").click(function() {

          var l = jQuery(this);
          jQuery("#" + l.attr('rel')).toggle();
          l.toggleClass("expanded");

          if (l.hasClass("expanded")) {
            l.text("Hide child dependencies");
          } else {
            l.text("Show child dependencies");
          }
          return false;
        });

        jQuery("a.comment").click(function() {

            var l = jQuery(this).attr('rel');
            <%= Umbraco.Concierge.Businesslogic.Compatibiity.Helper.Modal("plugins/Concierge/documentationAddComment.aspx?key=' + l + '", "Concierge - add developer comment", 540, 350) %>
            return false;
          
        });


      });      
    </script>
</asp:Content>