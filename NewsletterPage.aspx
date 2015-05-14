<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsletterPage.aspx.cs" Inherits="NewsletterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="MyStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span class="nametime">Current time:
                </span>
                <asp:Label ID="TimeLabel" runat="server"></asp:Label>
            </p>
    <p>
        <span class="title">Congratulation! You Email
        <asp:Label ID="EmailLabel" runat="server"></asp:Label>
&nbsp;successful subscribed our newsletter!</span></p>
    <p class="content">
        Choose your interested topic:</p>
    <p class="content">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Farmers</asp:ListItem>
            <asp:ListItem>The Body Shop</asp:ListItem>
            <asp:ListItem>Number One Shoes</asp:ListItem>
            <asp:ListItem>Daily Discount</asp:ListItem>
            <asp:ListItem>Daily News</asp:ListItem>
            <asp:ListItem>Customer Report</asp:ListItem>
            <asp:ListItem>Feedback+</asp:ListItem>
            <asp:ListItem>VIP Program</asp:ListItem>
            <asp:ListItem>Monthly Report</asp:ListItem>
        </asp:CheckBoxList>
    </p>
    <p class="content">
        <asp:Label ID="NewletterUpdateLabel" runat="server"></asp:Label>
    </p>
    <p>
        <asp:ImageButton ID="NewsletterSubButton" runat="server" ImageUrl="~/Images/submit.png" OnClick="NewsletterSubButton_Click" />
    </p>
</asp:Content>

