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

public partial class NewEntryPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set website title
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Create a new entry";

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
    protected void NewEntrySubmitButton_Click(object sender, EventArgs e)
    {
        //create a session that can pass a new entry to modeerator page
        if (NewEntryTextBox.Text != "")
        {
            Session["newEntry"] = "newEntry";
            Session["content"] = NewEntryTextBox.Text;
        }
        else
        {
            ErrorLabel.Text = "Please enter your new entry! Blank entry will no accept!";
        }
    }
}