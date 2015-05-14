<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuestionsPage.aspx.cs" Inherits="QuestionsPage" %>

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
        <span class="title">Frequently Asked Questions</span></p>
    <p>
        <span class="shopname">1.
        What is &quot;feedback policy&quot; about?</span></p>
    <p>
        <span class="content">Feedback is provided to facilitate trading/service between customers and store. It is designed to assist customers in their decision to trade with a particular store, and to help Negative Feedback assess whether customers are meeting others expectations. Feedback should be relevant to the specific transaction, and factual. We will only remove feedback where it breaches our terms and conditions of feedback. Feedback that is over 30 days old will not normally be reviewed by Negative Feedback. Feedback will be edited or removed if Nagetive Feedback considers that: it contains swear words or other offensive or inappropriate content it contains defamatory statements it contains the customer&#39;s private personal information, contact details or other means to individually identify the trader the trader placing feedback has been permanently removed from Nagetive Feedback the feedback refers to any ongoing investigation by Nagetive Feedback, the police, or any other authorised party Nagetive 
        Feedback receives a court order to remove feedback, or where Nagetive Feedback otherwise considers it appropriate to remove the feedback.</span></p>
<p>
        <span class="shopname">2. Placing, removing and editing feedback.</span></p>
<p>
        <span class="content">Feedback can only be edited once. If you delete your feedback you cannot place it again or have it re-instated. Under New Zealand law you can be held legally responsible for damages to a trader&#39;s reputation, so make sure you keep your feedback factual. </span> </p>
<p>
        <span class="shopname">3. Problems with feedback.</span></p>
<p>
        <span class="content">The store actually also have a account can view customers feedback and post reponse to slove the problem.</span></p>
    <p>
        &nbsp;</p>
    <p>
        <span class="shopname">For other questions, please go to
        </span>
        <asp:HyperLink ID="TermHyperLink" runat="server" NavigateUrl="~/TermConditionsPage.aspx">Term &amp; Conditions</asp:HyperLink>
        <span class="shopname">.</span></p>
    <p>
        &nbsp;</p>
</asp:Content>

