<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterPage.aspx.cs" Inherits="RegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 451px;
        }
        .auto-style3 {
            height: 23px;
            width: 451px;
        }
    </style>
    <link href="MyStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="nametime">Current time:
                        </span>
                        <asp:Label ID="TimeLabel" runat="server"></asp:Label>
    <br />
    <br />
    <span class="title">Register</span><br />
    <br />
    <table style="width:100%;" class="content">
        <tr>
            <td class="auto-style2">Name:</td>
            <td>
                <asp:TextBox ID="NameTextBox" runat="server" Width="200px" style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Login ID:</td>
            <td class="auto-style1">
                <asp:TextBox ID="LoginIDTextBox" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password:</td>
            <td class="auto-style1">
                <asp:TextBox ID="PasswordTextBox" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:RadioButton ID="TermsRadioButton" runat="server" Text="Accept Term &amp; Conditions" />
&nbsp;&nbsp;
                <asp:HyperLink ID="TermsLink" runat="server" NavigateUrl="~/TermConditionsPage.aspx">(Term &amp; Conditions)</asp:HyperLink>
                <br />
            </td>
            <td class="auto-style1">
                <asp:Label ID="TermsLabel" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:ImageButton ID="RegisterButton" runat="server" ImageUrl="~/Images/submit.png" OnClick="RegisterButton_Click" />
    <br />
</asp:Content>

