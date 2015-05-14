<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterSucPage.aspx.cs" Inherits="RegisterSucPage" %>

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
        <span class="nametime">Current time:
                    </span>
                    <asp:Label ID="TimeLabel" runat="server"></asp:Label>
                </p>
    <p class="shopname">
        Great News! Your account was created!</p>
    <p class="shopname">
        You can login now! Or login as guest!</p>
    <p>
        <br />
        <table style="width:228px;">
            <tr>
                <td style="width: 512px"><span class="title">Login<br />
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 512px"><span class="content">Login ID:<br />
                    </span>
                    <asp:TextBox ID="LoginIDTextBox" runat="server"></asp:TextBox>
                    <span class="content">
                    <br />
                    <br />
                    Password:<br />
                    </span>
                    <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
                    <span class="content">
                    <br />
                    <br />
                    </span>
                    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
                    <span class="content">
                    <br />
                    <br />
                    </span>
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/RecoveryPasswordPage.aspx">Forgot your password?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="width: 512px">
                    <asp:ImageButton ID="LoginButton" runat="server" ImageUrl="~/Images/login.png" PostBackUrl="~/CategoryPage.aspx" OnClick="LoginButton_Click" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

