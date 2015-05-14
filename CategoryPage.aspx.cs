//INFO 102 Assignment 2
//Website Name: Negative Feedback
//Student Name: Tianfu Yuan
//Student ID: 300228072

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CategoryPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set website title
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Blog Category";

        //showing current system time
        TimeLabel.Text = DateTime.Now.ToString("dd/MM/yyyy H:mm:ss");

        //if user is not login, login as guest
        if (Session["userId"] != null)
        {
            if (Session["id"] == "loginID")
            {
                LoginIDLabel.Text = Session["userId"].ToString();
            }
        }
        else
        {
            LoginIDLabel.Text = "Guest";
        }
    }
    protected void CheckButton_Click(object sender, EventArgs e)
    {
        //displaying three different shop with drop down list that can be select by user to read
        //the shop detail includes the shop logo, offical website and the description
        switch(CategoryDropDownList.Text)
        {
            case "The Body Shop":
                ShopImage.ImageUrl = "~/Images/bodyshoplogo.gif";
                ShopLink.NavigateUrl = "http://www.thebodyshop.co.nz/";
                ShopLabel.Text = "The Body Shop International plc is the original, natural and ethical beauty brand, with over 2,500 stores in over 60 markets worldwide.";
                BlogHyperLink.NavigateUrl = "~/BodyShopPage.aspx";
                break;

            case "Farmers":
                ShopImage.ImageUrl = "~/Images/farmerslogo.jpg";
                ShopLink.NavigateUrl = "http://www.farmers.co.nz/";
                ShopLabel.Text = "The Farmers Trading Company Ltd (branded as Farmers) is a New Zealand mid-market department store chain.";
                BlogHyperLink.NavigateUrl = "~/FarmersPage.aspx";
                break;

            case "Number One Shoes":
                ShopImage.ImageUrl = "~/Images/numberoneshoeslogo.jpg";
                ShopLink.NavigateUrl = "http://www.numberoneshoes.co.nz/";
                ShopLabel.Text = "Number One Shoes is New Zealand’s largest footwear retailer with 49 full retail and 3 outlet stores spread throughout the country.";
                BlogHyperLink.NavigateUrl = "~/NumberOneShoesPage.aspx";
                break;

            default:
                break;
        }
    }
}