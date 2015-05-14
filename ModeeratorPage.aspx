<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModeeratorPage.aspx.cs" Inherits="ModeeratorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="MyStyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 290px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 550px;" class="nametime">
        <tr>
            <td style="width: 250px">Login as:
                <asp:Label ID="LoginIDLabel" runat="server" Text="N/A"></asp:Label>
            </td>
            <td class="auto-style1">Current time:
                <asp:Label ID="TimeLabel" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <span class="nametime">
    <br />
    <br />
    User ID:
    </span>
    <asp:Label ID="UserIDLabel" runat="server"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="EntryTextBox" runat="server" Height="300px" Width="800px" CssClass="content"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" CssClass="content"></asp:Label>
    <br />
    <br />
    <asp:Button ID="AcceptButton" runat="server" OnClick="AcceptButton_Click" Text="Accept" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="DeclineButton" runat="server" OnClick="DeclineButton_Click" Text="Decline" />
    <br />
    <br />
    <asp:Label ID="DecisionLabel" runat="server" CssClass="content"></asp:Label>
    <br />
</asp:Content>

