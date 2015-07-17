<%@ Register Namespace="umbraco" TagPrefix="umb" Assembly="umbraco" %>
<%@ Register TagPrefix="cc1" Namespace="umbraco.uicontrols" Assembly="controls" %>
<%@ Page language="c#"  MasterPageFile="../masterpages/umbracoPage.Master" validateRequest="false" Codebehind="editCustom.aspx.cs" AutoEventWireup="True" Inherits="CustomUmbracoSection.editCustom" %>


<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
			 <cc1:TabView runat="server" ID="tabControl" Width="552px" Height="692px"/>
			    
		
		
                    <cc1:Pane ID="Pane1" runat="server" Height="600px" Width="330px">
                        <cc1:PropertyPanel runat="server" ID="pp_sample1">
                            <asp:Literal ID="litsample1" runat="server"></asp:Literal>
                        </cc1:PropertyPanel>
                        
                       
                    </cc1:Pane>
                
              
           
			    <cc1:Pane ID="Pane2" runat="server" Height="600px" Width="330px">
			         <cc1:PropertyPanel runat="server" ID="pp_sample2">
                         <asp:Literal ID="litsample2" runat="server"></asp:Literal>
                        </cc1:PropertyPanel>
			    </cc1:Pane>
			  
			   
                    
                    
			
</asp:Content>