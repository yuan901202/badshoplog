<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutPage.aspx.cs" Inherits="AboutPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="MyStyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span class="nametime">Current time:
                </span>
                <asp:Label ID="TimeLabel" runat="server"></asp:Label>
            </p>
    <p>
        <span class="title">About Us</span></p>
    <p class="content">
        Negative Feedback (NF) is an expert, independent, nonprofit organisation whose mission is to work for a fair, just, and safe marketplace for all consumers and to empower consumers to protect themselves. The organisation was founded in 2014 in Wellington, New Zealand.</p>
    <p class="content">
        We focus on consumers who have bad experience at a store or have a serices at service center. We let people public their story on our website, but the stories will throught our investigate team to decide accept or not. People can public their story by anonymity to protect their personal information.</p>
    <p class="content">
        Why customer review is important?</p>
    <p class="content">
        A customer review is a review of a product or service made by a customer who has purchased the product or service. Customer reviews are a form of customer feedback on electronic commerce and online shopping sites. There are also dedicated review sites, some of which use customer reviews as well as or instead of professional reviews. The reviews may themselves be graded for usefulness or accuracy by other users.</p>
    <p>
        &nbsp;</p>
</asp:Content>

