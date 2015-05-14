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

public partial class ModeeratorPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set website title
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Modeerator Page";

        //showing current system time
        TimeLabel.Text = DateTime.Now.ToString("dd/MM/yyyy H:mm:ss");

        //create a session that can pass from user ctreated a new entry
        Session["entry"] = EntryTextBox.Text;

        //if user is not login, login as guest
        //blog has admit user account, the userID is "admin" and the password is "admit"
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

        //pass user new entry to modeerator
        if (Session["content"] != null)
        {
            if (Session["newEntry"] == "newEntry")
            {
                EntryTextBox.Text = Session["content"].ToString();
            }
            else
            {
                ErrorLabel.Text = "There has error occurred!";
            }
        }       
    }
    protected void AcceptButton_Click(object sender, EventArgs e)
    {
        //if modeerator accept the new entry, it will showing the message
        DecisionLabel.Text = "You accept the new entry! The email has been send to user.";

        //send a accept email to user
        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
        message.To.Add("yuan901202@hotmail.com");
        message.Subject = "Your new entry was accept";
        message.From = new System.Net.Mail.MailAddress("yuan901202@hotmail.com");
        message.Body = "Great news! Your new entry was accept by us. :) Thanks.";
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtphost");
        smtp.Send(message);

        //all accepted entry will store at "UserEntryNew.txt"
        StreamWriter sw = new StreamWriter(Server.MapPath("~") + "/Files/UserEntryNew.txt", true);
        sw.WriteLine(Session["entry"].ToString());
        sw.Close();
    }
    protected void DeclineButton_Click(object sender, EventArgs e)
    {
        //if modeerator accept the new entry, it will showing the message
        DecisionLabel.Text = "You decline the new entry! The email has been send to user.";

        //send a decline email to user
        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
        message.To.Add("yuan901202@hotmail.com");
        message.Subject = "Your new entry was decline";
        message.From = new System.Net.Mail.MailAddress("yuan901202@hotmail.com");
        message.Body = "Bad news! Your new entry was decline by us. Sorry. :( Thanks.";
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtphost");
        smtp.Send(message);

        //all declined entry will store at "DeclineEntry.txt", modeerator can be check it latter time
        StreamWriter sw = new StreamWriter(Server.MapPath("~") + "/Files/DeclineEntry.txt", true);
        sw.WriteLine(Session["entry"].ToString());
        sw.Close();
    }
}