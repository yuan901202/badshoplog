<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BodyShopPage.aspx.cs" Inherits="BodyShopPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="MyStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
    <asp:TextBox ID="BodyShopTextBox" runat="server" Height="300px" Width="800px" CssClass="content"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="NewEntryButton" runat="server" OnClick="NewEntryButton_Click" Text="Add New Entry" />
    <br />
    <br />
    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
    <br />
</asp:Content>

