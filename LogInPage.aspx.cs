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

public partial class LogInPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set website title
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Login & Register";

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
    protected void LoginButton_Click(object sender, ImageClickEventArgs e)
    {
        string loginID = LoginIDTextBox.Text; //read the loginID from the user entered
        //creat a session that can pass the loginID to other pages, and also can display it on the page
        if (loginID != "")
        {
            Session["id"] = "loginID";
            Session["userId"] = LoginIDTextBox.Text;
        }
        
        string password = PasswordTextBox.Text; //read the password from the user entered
        if (password != "")
        {
            Session["pw"] = "password";
            Session["password"] = PasswordTextBox.Text;
        }

        bool loginInfoCorrect = true; //check the loginID and password that user entered is correct
        int count = 0;
        int size = 1024; //set array size to 1024 or can be bigger
        string[] usernameList = new string[size]; //create an array that store the username(LoginID)
        string[] passwordList = new string[size]; //create an array that store the password

        //if something goes wrong, pass control over to the catch statement
        //read the loginID file 
        try
        {
            using (StreamReader idsr = new StreamReader(Server.MapPath("~") + "/Files/LoginIDFile.txt", true))
            {
                while (idsr.Peek() > -1) //when we reach the end of the file, the integer returned by peek is -1
                {
                    usernameList[count] = idsr.ReadLine();
                    count++;
                }
                idsr.Close(); //close read file
            }
        }
        catch (Exception ex)
        {
            ErrorLabel.Text = "An error occurred: " + ex.ToString(); //if something goes error, it will showing the error message
        }


        //read the password file
        try
        {
            using (StreamReader pwsr = new StreamReader(Server.MapPath("~") + "/Files/LoginPasswordFile.txt", true))
            {
                while (pwsr.Peek() > -1) //when we reach the end of the file, the integer returned by peek is -1
                {
                    passwordList[count] = pwsr.ReadLine();
                    count++;
                }
                pwsr.Close();
            }
        }
        catch (Exception ex)
        {
            ErrorLabel.Text = "An error occurred: " + ex.ToString();
        }

        //check with files, if files are contains the loginID and password, the condition is true, otherwise is false
        if (usernameList.Contains(loginID) && passwordList.Contains(password))
        {
            loginInfoCorrect = true;
        }
        else
        {
            loginInfoCorrect = false;
        }

        //if user entered the userID and password was matched with the file stored, it will login successfully
        if (loginInfoCorrect == true)
        {
            ErrorLabel.Text = "Welcome!"; //showing welcome message
            Response.Redirect("CategoryPage.aspx");
        }
        else
        {
            Response.Redirect("LogInPage.aspx"); //if user are faile to login to blog, it will lead user to login page again
        }
    }
    protected void RegisterButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("RegisterPage.aspx");
    }
}