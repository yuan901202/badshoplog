<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewEntryPage.aspx.cs" Inherits="NewEntryPage" %>

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
    <span class="nametime">
    <br />
    User ID:
                        </span>
                        <asp:Label ID="LoginIDLabel0" runat="server" Text="N/A"></asp:Label>
    <br />
    <br />
    <span class="title">New entry:</span><br />
    <asp:TextBox ID="NewEntryTextBox" runat="server" Height="300px" Width="800px" CssClass="content"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" CssClass="content"></asp:Label>
    <br />
    <br />
    <asp:Button ID="NewEntrySubmitButton" runat="server" OnClick="NewEntrySubmitButton_Click" Text="Submit" />
    <br />
</asp:Content>

