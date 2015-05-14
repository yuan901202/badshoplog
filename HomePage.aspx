<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="MyStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 1024px;">
    <tr>
        <td>
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
            <span class="title">How to use customer feedback to improve your business?</span><br />
            <br />
            <span class="content">It&#39;s all about feedback, isn&#39;t it? If you can make it easy for your customers to provide feedback, use their feedback to find out what&#39;s most important to them and focus your efforts on meeting and/or exceeding those needs, you&#39;ll get the benefits of their future patronage and that of many new customers.<br />
            </span>
            <br />
            <span class="title">Why choose Negative Feedback?</span><br />
            <br />
            <span class="content">Negative Feedback is the local New Zealand company focus on to slove the probelm and found the problem between customers and merchant. Customers can public their unhappy stories on our blog and let other people knows. And also, we ask merchant to deal with customers who have bad experience at their shop.</span><br />
            <br />
            <span class="title">Why feedback is important to business?</span><br />
            <br />
            <span class="content">Customer feedback is paramount when determining a customer&#39;s needs and tastes, particularly when a business introduces new products. Companies conduct focus groups, in-person research or customer phone surveys to determine the product features, flavors or styles that consumers want. Customer feedback helps companies determine what&#39;s important to their customers, according to The Calgary Beacon article &quot;9 Great Reasons To Conduct Customer Surveys.&quot; Without customer feedback, a company could not possibly meet the product needs of the consumer. Consequently, its products would likely fail in the marketplace.</span><br />
            <br />
            <span class="title">Why is it important to collect customer feedback?</span><br />
            <br />
            <span class="content">Receiving customer feedback enables a company to correct any issues or concerns customers may have with the company&#39;s products and its services. When customers provide feedback, a company is able to save money, time and improve relationships with customers. Not being in tune with your customers is like living in an alternate reality; the way you think your customers feel about your product is not always the same as what your customers really think about your product. A dissatisfied customer may tell five or six other people about his bad experience, which could harm your company&#39;s reputation and have an effect on market share and profits. Feedback allows you to correct these problems. Some customers will not tell you they are unhappy with your product or service; they will just stop doing business with you. A situation such as this can be avoided when feedback is requested. Feedback allows you to correct product deficiencies and inefficiencies. A defective product could cause an 
            injury and lead to a lawsuit. Class action lawsuits can cost a company millions of dollars. When you receive feedback from customers, it can help management make decisions about a product or service. Feedback can help determine if a product should be discontinued and a new product be manufactured and brought to the market. When you get customer feedback, it allows you to better understand your customers&#39; needs and concerns. This information can help you go above and beyond the call of duty and exceed customers&#39; expectations.<br />
            </span><br />
        </td>
        <td style="border: thin double #FFFFFF"><span class="title">Support Shops/Services:</span><br />
            <br />
            <span class="shopname">Farmers</span><br />
            <asp:ImageButton ID="FarmersImageButton" runat="server" ImageUrl="~/Images/farmerslogo.jpg" PostBackUrl="~/FarmersPage.aspx" Width="300px" />
            <br />
            <br />
            <span class="shopname">The Body Shop</span><br />
            <asp:ImageButton ID="BodyShopImageButton" runat="server" ImageUrl="~/Images/bodyshoplogo.gif" PostBackUrl="~/BodyShopPage.aspx" />
            <br />
            <br />
            <span class="shopname">Number One Shoes</span><br />
            <asp:ImageButton ID="NumberOneShoesImageButton" runat="server" ImageUrl="~/Images/numberoneshoeslogo.jpg" PostBackUrl="~/NumberOneShoesPage.aspx" />
            <br />
            <br />
            <br />
            To be continue...</td>
    </tr>
</table>
</asp:Content>

