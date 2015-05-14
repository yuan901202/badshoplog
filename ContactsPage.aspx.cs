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

public partial class ContactsPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set website title
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Contact Us";

        //showing current system time
        TimeLabel.Text = DateTime.Now.ToString("dd/MM/yyyy H:mm:ss");  
    }
    protected void FeedbackButton_Click(object sender, EventArgs e)
    {
        //if user submit the feedback to website, it will showing the message
        FeedbackLabel.Text = "Great, your feedback was recieved! You will get respones within 24 hours.";

        //send email to web hoster
        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
        message.To.Add("yuan901202@hotmail.com");
        message.Subject = "User feedback";
        message.From = new System.Net.Mail.MailAddress("yuan901202@hotmail.com");
        message.Body = FeedbackTextBox.Text;
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtphost");
        smtp.Send(message);
    }
    protected void NewsletterButton_Click(object sender, ImageClickEventArgs e)
    {
        if (NewsletterTextBox.Text != "")
        {
            Session["email"] = "emailAddress";
            Session["newsletterEmail"] = NewsletterTextBox.Text;
        }

        //send new password to user that require recovery password
        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
        message.To.Add(NewsletterTextBox.Text);
        message.Subject = "Newsletter from Negative Feedback";
        message.From = new System.Net.Mail.MailAddress("yuan901202@hotmail.com");
        message.Body = "Great news! Your newsletter was updated! Enjoy! :)";
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtphost");
        smtp.Send(message);

        //user can subscribe the newsletter, it will lead to newsletter page
        Response.Redirect("NewsletterPage.aspx");
    }
}