<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="dashboard.ascx.cs" Inherits="Umbraco.Concierge.plugins.Concierge.dashboard" %>
<%@ Register TagPrefix="cc1" Namespace="umbraco.uicontrols" Assembly="controls" %>


<cc1:Pane ID="register" runat="server" Text="Register Concierge" Visible="false">
    <cc1:PropertyPanel ID="PropertyPanel6" runat="server">
        <h3>Thank you for trying out Umbraco Concierge!</h3>
        <p> To purchase Umbraco Concierge, simply go to the <a target="_blank" href="http://umbraco.com/redir/conciergeOrderFromTrial/">
            Umbraco online shop</a> and you're up and running in minutes!</p>
            
        <p>If you've already purchased Umbraco Concierge, you can install your license 
            automatically by using your <strong>umbraco.org profile credentials</strong> below.</p>
            
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            
            <cc1:Feedback ID="licenseFeedback" runat="server" />
            
            <asp:Panel ID="licensingLogin" runat="server">
                    <cc1:PropertyPanel runat="server" Text="E-mail">
                        <asp:TextBox ID="login" CssClass="guiInputText guiInputStandardSize" runat="server"></asp:TextBox>
                    </cc1:PropertyPanel>
                    
                    <cc1:PropertyPanel runat="server" Text="Password">
                        <asp:TextBox ID="password" TextMode="Password" CssClass="guiInputText guiInputStandardSize" runat="server"></asp:TextBox>
                    </cc1:PropertyPanel>
                    
                    <cc1:PropertyPanel runat="server" Text=" ">
                    <p>
                        <asp:Button ID="getLicensesButton" runat="server" Text="Get My licenses From umbraco.org" OnClick="getLicensesButton_Click" />  
                    </p>
                    </cc1:PropertyPanel>
            </asp:Panel>
                
            <asp:Panel ID="listLicenses" runat="server" Visible="false">
                    <cc1:PropertyPanel runat="server">
                        <h4>
                            Following licenses was found via your profile on umbraco.org:
                        </h4>
                        <p>    
                        <asp:RadioButtonList ID="licensesList" runat="server" />
                        </p>                        
                        <p>
                        <asp:Button ID="chooseLicense" runat="server" Text="Use or configure this license" OnClick="chooseLicense_Click" />
                        </p>
                    </cc1:PropertyPanel>
                    
            </asp:Panel>
                
            <asp:Panel ID="configureLicense" runat="server" Visible="false">
                    
                    <cc1:PropertyPanel ID="PropertyPanel8" runat="server">
                    <p><strong>Please choose the domain that should be used for this license (without www - for instance 'mysite.com')</strong></p>
                    <p>Any subdomain will work with this license, ie. 'www.mysite.com', 'dev.mysite.com', 'staging.mysite.com'. In addition 'localhost' will always work.</p>
                    </cc1:PropertyPanel>
                    
                    <cc1:PropertyPanel runat="server" text="Domain">
                        <asp:TextBox ID="domainOrIp" CssClass="guiInputText guiInputStandardSize" runat="server"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="domainOrIp" runat="server" ErrorMessage="Please enter a domain"></asp:RequiredFieldValidator>
                    </cc1:PropertyPanel>
                    
                    <cc1:PropertyPanel runat="server" Text=" ">
                        <p>
                    <asp:Button ID="generateLicenseButton" runat="server" Text="Generate and save license" OnClick="Button1_Click" />
                        </p>
                    </cc1:PropertyPanel>
                    
            </asp:Panel>
                
               
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </cc1:PropertyPanel>
</cc1:Pane>

<cc1:Pane Text="Documentation" runat="server">
    <cc1:PropertyPanel ID="PropertyPanel4" runat="server">
    
    <p class="intro">
      Concierge documentation contains description of each individual website element, its properties and the elements it depends on to function properly.
    </p>
    
    <ul class="dash">
      <asp:Literal ID="lt_docs" runat="server" />
    </ul>
    
    <br style="clear: both"/>     
    </cc1:PropertyPanel>
    
</cc1:Pane>

<cc1:Pane Text="Reports" runat="server">

<cc1:PropertyPanel ID="PropertyPanel3" runat="server">
   <p class="intro">
    Reports digs into your website elements and calculates statistic, keeping you up-to-date on the core numbers of your website.
   </p>
      <ul class="dash">
      <asp:Literal ID="lt_reports" runat="server" />
   </ul>
    
    <br style="clear: both"/>  
</cc1:PropertyPanel>

</cc1:Pane>

<cc1:Pane Text="Log activity" runat="server">
  <cc1:PropertyPanel runat="server">
  <p class="intro">The umbraco log keeps an eye on your website, day and night, <strong>the last 48 hours there's been logged: </strong></p>
     <asp:Literal ID="lt_logEntries" runat="server" />
  </cc1:PropertyPanel>  
</cc1:Pane>

<cc1:Pane Text="Check-in / Check-out" runat="server">
<cc1:PropertyPanel runat="server">
<p class="intro">Check-in / check-out can lock items so only a single editor have access to edit it from the umbraco user interface</p>

      
      <p class="checkIn">
      You currently have <strong><asp:Literal ID="lt_yourFiles" runat="server"/></strong> documents locked
      <small class="block"><a href="plugins/concierge/CheckInOutOverView.aspx?mode=yours">View your locked documents</a></small>
      </p>

      <p class="checkIn"> 
      In total, there are <strong><asp:Literal ID="lt_allFiles" runat="server"/></strong> documents locked
      <small class='block'><a href="plugins/concierge/CheckInOutOverView.aspx?mode=all">View all locked documents</a></small>      
      </p>

</cc1:PropertyPanel>

</cc1:Pane>