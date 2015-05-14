<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactsPage.aspx.cs" Inherits="ContactsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="MyStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span class="nametime">Current time:
                </span>
                <asp:Label ID="TimeLabel" runat="server"></asp:Label>
            </p>
    <p class="content">
    Our office locate at CBD Wellington, New Zealand.</p>
    <p class="content">
        <asp:HyperLink ID="HyperLink6" runat="server" ImageUrl="~/Images/map.png" NavigateUrl="https://www.google.co.nz/maps/place/Wellington/">HyperLink</asp:HyperLink>
    </p>
<p class="content">
    Office hours:</p>
<p class="content">
    9:00am - 4:30pm Monday - Friday</p>
<p class="content">
    11:am - 3:00pm Saturday</p>
<p class="content">
    Closed Sunday &amp; Public holidays</p>
<p class="content">
    &nbsp;</p>
<p class="content">
    Customer support phone:</p>
<p class="content">
    800 *** ***</p>
<p class="content">
    &nbsp;</p>
<p class="content">
    Support email:</p>
<p class="content">
    <a href="mailto:yuan901202@hotmail.com">yuan901202@hotmail.com</a></p>
<p class="content">
    &nbsp;</p>
    <p class="content">
        Before you submit your feedback or questions, please our
        <asp:HyperLink ID="QuestionsHyperLink" runat="server" NavigateUrl="~/QuestionsPage.aspx">Frequently Asked Questions</asp:HyperLink>
        . Many thanks. :)</p>
<p class="content">
    Submit your feedback or questions:</p>
<p style="text-align: center" class="content">
    <asp:TextBox ID="FeedbackTextBox" runat="server" Height="70px" style="text-align: center" Width="700px"></asp:TextBox>
</p>
<p style="text-align: center" class="content">
    <asp:Button ID="FeedbackButton" runat="server" Text="Submit" Width="94px" OnClick="FeedbackButton_Click" />
</p>
    <p style="text-align: center" class="content">
        <asp:Label ID="FeedbackLabel" runat="server" ForeColor="Red"></asp:Label>
</p>
    <p style="text-align: center" class="content">
        &nbsp;</p>
    <p style="text-align: left" class="content">
        Subscribe to our daily newsletter:</p>
    <p style="text-align: left" class="content">
        <asp:TextBox ID="NewsletterTextBox" runat="server" Height="27px" style="margin-top: 0px" Width="484px"></asp:TextBox>
&nbsp;
        <asp:ImageButton ID="NewsletterButton" runat="server" ImageUrl="~/Images/subscribe.jpg" Width="100px" OnClick="NewsletterButton_Click" />
</p>
<p class="content">
    <asp:RegularExpressionValidator ID="NewsletterEmailValidator" runat="server" ControlToValidate="NewsletterTextBox" Display="Dynamic" ErrorMessage="Not in the correct format i.e abc@domain !" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
</asp:Content>

