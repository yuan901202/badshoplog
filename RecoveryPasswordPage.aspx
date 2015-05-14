<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecoveryPasswordPage.aspx.cs" Inherits="RecoveryPasswordPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

.login_register {
    font-family: "Miriam Fixed";
    color: #FF0000;
    font-size: medium;
    font-weight: bolder;
}

    </style>
    <link href="MyStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span class="nametime">Current time:
                        </span>
                        <asp:Label ID="TimeLabel" runat="server"></asp:Label>
                    <br />
        <table style="width: 100%; color: #FFFFFF;">
            <tr class="shopname">
                <td><span class="login_register">
                    <br />
                    </span><span class="shopname">Forgot Your Password?<br />
                    <br />
                    Can&#39;t remember your password? Just enter your email address below and we&#39;ll email it to you.</span></td>
            </tr>
            <tr class="content">
                <td style="text-align: center">
                    <br />
                    Your Email Address:<br />
                    &nbsp;<asp:TextBox ID="EmailTextBox" runat="server" OnTextChanged="EmailTextBox_TextChanged" style="text-align: center" Width="434px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Not in the correct format i.e abc@domain" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr class="content">
                <td style="text-align: center">
                    <br />
                    <asp:ImageButton ID="SendButton" runat="server" ImageUrl="~/Images/submit.png" OnClick="SendButton_Click" />
                    <br />
                    <br />
                    <asp:Label ID="RecoveryPasswordLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

