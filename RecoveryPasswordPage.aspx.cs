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

public partial class RecoveryPasswordPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set website title
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Recovery Password";

        //showing current system time
        TimeLabel.Text = DateTime.Now.ToString("dd/MM/yyyy H:mm:ss");
    }
    protected void SendButton_Click(object sender, ImageClickEventArgs e)
    {
        //send new password to user that require recovery password
        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
        message.To.Add(EmailTextBox.Text);
        message.Subject = "Your new password!";
        message.From = new System.Net.Mail.MailAddress("yuan901202@hotmail.com");
        message.Body = "This is your new password: 123456. Keep it at safe place.";
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtphost");
        smtp.Send(message);
        
        Response.Redirect("RecoveryPasswordPage.aspx");
        
        //showing successful message
        RecoveryPasswordLabel.Text = "Great! Your password was send to you" + EmailTextBox.Text + "inbox!";        
    }
}