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

public partial class TermConditionsPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set website title
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Term & Conditions";

        //showing current system time
        TimeLabel.Text = DateTime.Now.ToString("dd/MM/yyyy H:mm:ss");
    }
    protected void BackRegisterButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisterPage.aspx");
    }
}