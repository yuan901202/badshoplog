<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogInPage.aspx.cs" Inherits="LogInPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 102px;
        }
    </style>
    <link href="MyStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width: 550px;" class="nametime">
            <tr>
                <td style="width: 250px">Login as:
                    <asp:Label ID="LoginIDLabel" runat="server" Text="N/A"></asp:Label>
                </td>
                <td>Current time:
                    <asp:Label ID="TimeLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </p>
    <p>
        <table style="width:1024px;" class="content">
            <tr>
                <td style="width: 512px"><span class="title">Login</span></td>
                <td><span class="title">Register</span></td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 512px">Login ID:<br />
                    <asp:TextBox ID="LoginIDTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Password:<br />
                    <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/RecoveryPasswordPage.aspx">Forgot your password?</asp:HyperLink>
                </td>
                <td class="auto-style1">
                    <br />
                    Why register?<br />
                    - Get newest feedback from other customers<br />
                    - Add blog to your collect folder<br />
                    - Post your personal blog<br />
                    - Tracking business feedback<br />
                    - Get our free newsletter<br />
                    - Best of all. It&#39;s free!<br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 512px">
                    <asp:ImageButton ID="LoginButton" runat="server" ImageUrl="~/Images/login.png" OnClick="LoginButton_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="RegisterButton" runat="server" ImageUrl="~/Images/register.png" OnClick="RegisterButton_Click" />
                </td>
            </tr>
        </table>
</p>
<p>
</p>
</asp:Content>

