<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Form.ascx.cs" Inherits="NoCaptchaPackage.Form" %>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<div class="g-recaptcha" data-sitekey="6LdQaAUTAAAAAJ8Y0p134g5U3wMKnoUVyPAuyZE1"></div>
            <div class="recaptcha-error-message">Please verify that you are not a robot.</div>
<asp:Button ID="Button1" runat="server" Text="Button" OnClick="FormCheck_Click"/>
<script src='https://www.google.com/recaptcha/api.js'></script>
    <script type="text/javascript">
        $('.recaptcha-error-message').hide();
    </script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    