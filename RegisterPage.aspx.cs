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

public partial class RegisterPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set website title
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Register Now";

        //showing current system time
        TimeLabel.Text = DateTime.Now.ToString("dd/MM/yyyy H:mm:ss");
    }
    protected void RegisterButton_Click(object sender, ImageClickEventArgs e)
    {
        //only user accepted the term & conditions can process to next step
        if (TermsRadioButton.Checked)
        {
            int size = 1024; //set array size to 1024

            //read value that user entered
            string name = NameTextBox.Text;
            string email = EmailTextBox.Text;
            string userID = LoginIDTextBox.Text;
            string password = PasswordTextBox.Text;

            //create array that can store value to array
            string[] idArray = new string[size];
            string[] pwArray = new string[size];

            //string[,] userinfo = new string[,] { "userID", "password"};

            //write array to file
            using (StreamWriter idsw = new StreamWriter(Server.MapPath("~") + "/Files/LoginIDFile.txt", true))
            {
                for (int i = 0; i < size; i++)
                {
                    idArray[i] = userID;
                }
                
                idsw.WriteLine(idArray);
                idsw.Close(); //close file
            }

            //write array to file
            using (StreamWriter pwsw = new StreamWriter(Server.MapPath("~") + "/Files/LoginPasswordFile.txt", true))
            {
                for (int i = 0; i < size; i++)
                {
                    pwArray[i] = password;
                }

                pwsw.WriteLine(pwArray);
                pwsw.Close(); //close file
            }
           
            Response.Redirect("RegisterSucPage.aspx");
        }
        else
        {
            TermsLabel.Text = "You must accept the Term & Conditions to register!";
            Response.Redirect("RegisterPage.aspx");
        }
    }
}