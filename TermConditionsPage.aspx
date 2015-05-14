<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TermConditionsPage.aspx.cs" Inherits="TermConditionsPage" %>

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
        <span class="title">Term &amp; Conditions</span></p>
    <p>
        <span class="shopname">The following terms govern the use of this website. Please read them carefully.</span></p>
    <p class="content">
        <b>1. Content</b></p>
    <p class="content">
        While we endeavour to supply accurate information on this site, errors and omissions may occur. The Negative Feedback (&quot;NF&quot;) does not accept any liability, direct or indirect, for any loss or damage which may directly or indirectly result from any advice, opinion, information, representation or omission whether negligent or otherwise, contained on this site. You are solely responsible for the actions you take in reliance on the content on, or accessed, through this site.</p>
    <p class="content">
        The Warehouse reserves the right to make changes to the content on this site at any time and without notice.</p>
    <p class="content">
        To the extent permitted by New Zealand law, The Negative Feedback makes no warranties in relation to the merchantability, fitness for purpose, freedom from computer virus, accuracy or availability of this web site or any other web site.</p>
    <p class="content">
        Although this website may provide product information, the site does not offer any online shopping facilities.</p>
    <p class="content">
        <b>2. Intellectual Property</b></p>
    <p class="content">
        The Negative Feedback owns all copyright and other intellectual property in this site. Everything on this site, unless otherwise stated, is copyright.</p>
    <p class="content">
        The Negative Feedback welcomes the use of this site for personal use, non-commercial use, research or study - provided that the user acknowledges all copyright and other notices contained in the content.</p>
    <p class="content">
        We advise that you may not copy or display for redistribution to third parties, or for commercial purposes, any portion of this site without the express permission of The Negative Feedback.</p>
    <p class="content">
        <b>3. Links</b></p>
    <p class="content">
        Please note that although this site has some hyperlinks to other third party websites, these sites have not been prepared by The Negative Feedback and are not under the control of The Negative Feedback. The links are only provided as a convenience, and do not imply that The Negative Feedback endorses, checks, or approves of the third party site. The Negative Feedback is not responsible for the privacy principles or content of these third party sites. The Negative Feedback is not responsible for the availability of any of these links.</p>
    <p class="content">
        The Negative Feedback requires that you request our permission to include a link from another site to this site. If you would like to request permission, please email us at yuan901202@hotmail.com.</p>
    <p class="content">
        <b>4. Jurisdiction</b></p>
    <p class="content">
        This website is governed by, and is to be interpreted in accordance with, the laws of New Zealand.</p>
    <p class="content">
        <b>5. Changes to this Agreement</b></p>
    <p class="content">
        The Negative Feedback reserves the right to alter, modify or update these terms of use.</p>
    <p>
        &nbsp;</p>
    <p style="text-align: center">
        <asp:Button ID="BackRegisterButton" runat="server" OnClick="BackRegisterButton_Click" Text="Back To Register" />
    </p>
    <p style="text-align: center">
        &nbsp;</p>
</asp:Content>

