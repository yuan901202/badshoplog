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

public partial class NewsletterPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set website title
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Newsletter";

        //showing current system time
        TimeLabel.Text = DateTime.Now.ToString("dd/MM/yyyy H:mm:ss");

        if (Session["newsletterEmail"] != null )
        {
            if (Session["email"] == "emailAddress")
            {
                EmailLabel.Text = Session["newsletterEmail"].ToString();
            }                 
        }
    }
    protected void NewsletterSubButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("NewsletterPage.aspx");
        //when user updated their newsletter topics, showing fllowing message
        NewletterUpdateLabel.Text = "Your newsletter was updated!";
    }
}