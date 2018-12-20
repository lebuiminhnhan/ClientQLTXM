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
    public partial class RegisterPage : System.Web.UI.Page
    {
       
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

                sv.DangKiGG(profile.DisplayName, profile.Emails.Find(email => email.Type == "account").Value, profile.Id);


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

        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            sv.DangKiTT(txt1.Text, txt2.Text, txt3.Text);
            
            Response.Redirect("LoginPage.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            GoogleConnect.Authorize("profile", "email");
        }
    }
}