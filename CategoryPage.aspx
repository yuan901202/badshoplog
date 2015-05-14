<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CategoryPage.aspx.cs" Inherits="CategoryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 543px;
        }
    </style>
    <link href="MyStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
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
    <br />
    <asp:ImageButton ID="ImageButton2" runat="server" Height="300px" ImageUrl="~/Images/Deliver-Feedback-1024x497.jpg" PostBackUrl="~/CategoryPage.aspx" />
    <br />
    <br />
    <table style="width:1024px;" class="content">
        <tr>
            <td class="auto-style1">    <asp:DropDownList ID="CategoryDropDownList" runat="server" Width="200px">
        <asp:ListItem>The Body Shop</asp:ListItem>
        <asp:ListItem>Farmers</asp:ListItem>
        <asp:ListItem>Number One Shoes</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td>
    <asp:Button ID="CheckButton" runat="server" Text="Check It" OnClick="CheckButton_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Image ID="ShopImage" runat="server" Width="250px" />
            </td>
            <td>
                <asp:Label ID="ShopLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:HyperLink ID="ShopLink" runat="server">Official Website</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="BlogHyperLink" runat="server">Read Feedback!</asp:HyperLink>
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

