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
using System.IO;

public partial class NumberOneShoesPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set website title
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Number One Shoes's blog";

        //showing current system time
        TimeLabel.Text = DateTime.Now.ToString("dd/MM/yyyy H:mm:ss");

        //read the user entry for Number One Shoes
        StreamReader sr = new StreamReader(Server.MapPath("~") + "/Files/NumberOnesShoesUserEntry.txt", true);
        NumberOneShoesTextBox.Text = sr.ReadLine(); //read the file, and then print it out to user
        sr.Close(); //close the file

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
    protected void NewEntryButton_Click(object sender, EventArgs e)
    {
        //only login user can add new entry
        if (LoginIDLabel.Text == "Guest" || LoginIDLabel.Text == "")
        {
            ErrorLabel.Text = "You must login!";
            Response.Redirect("LogInPage.aspx");
        }
        else
        {
            Response.Redirect("NewEntryPage.aspx");
        }
    }
}