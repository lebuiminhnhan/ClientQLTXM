using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.GoogleAPI;
namespace QuanLiThueXe.LoginSite
{
    public partial class LoginPage : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        Random ran = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            GoogleConnect.ClientId = "647249466085-86cobods24g01p5j246vbcfcmbvh45i5.apps.googleusercontent.com";
            GoogleConnect.ClientSecret = "6XlKYkH72YZSEoXNdgevLd-J";
            GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

            if (!string.IsNullOrEmpty(Request.QueryString["code"]))
            {
                string code = Request.QueryString["code"];
                string json = GoogleConnect.Fetch("me", code);
                GoogleProfile profile = new JavaScriptSerializer().Deserialize<GoogleProfile>(json);
                Session["role"] = sv.checkUser(profile.Emails.Find(email => email.Type == "account").Value);
                Session["name"] = sv.checknameGG(profile.Emails.Find(email => email.Type == "account").Value);

                Response.Redirect("~/HomeSite/HomePage.aspx");

            }
            if (Request.QueryString["error"] == "access_denied")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
            }
        }
        public string mahoa(string pass)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(pass.Trim(), "SHA1");
        }
        protected void Login1(object sender, EventArgs e)
        {
            GoogleConnect.Authorize("profile", "email");

        }
        protected void Clear(object sender, EventArgs e)
        {
            GoogleConnect.Clear(Request.QueryString["code"]);
        }

        public class GoogleProfile
        {
            public string Id { get; set; }
            public string DisplayName { get; set; }
            public Image Image { get; set; }
            public List<Email> Emails { get; set; }
            public string Gender { get; set; }
            public string ObjectType { get; set; }

            public int PhoneNumber { get; set; }
        }

        public class Email
        {
            public string Value { get; set; }
            public string Type { get; set; }
        }

        public class Image
        {
            public string Url { get; set; }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (sv.DangNhapTT(TextBox1.Text, TextBox2.Text) == true)
                {

                    Session["role"] = sv.checkAdmin(TextBox1.Text);
                    Session["name"] = sv.checknameTT(TextBox1.Text);
                    if ((string)Session["role"] != "User")
                    {
                        Response.Redirect("~/AdminSite/Hopdong.aspx");
                    }
                    else
                    {

                        Response.Redirect("~/HomeSite/HomePage.aspx");

                    }

                }
                else
                {
                    Response.Redirect("LoginPage.aspx");
                    
                }
            }
            catch(Exception)
            {
                showmasage.Text = "Sai tài khoản hoặc mật khẩu !";
            }
        }
    }
}