using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
    public partial class AdminSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                if ((string)Session["role"] == "User")
                {

                }
                Label2.Text = "Chào, khách vãng lai";
            }
            else
                 if ((string)Session["role"] == "Admin")
            {

                Label2.Text = "Chào, " + Session["role"] + " , " + Session["name"];
            }
            else
                     if ((string)Session["role"] == "User")
            {

                Label2.Text = "Chào! " + Session["role"] + " , " + Session["name"];
            }
            else
             if ((string)Session["role"] == "Staff")
            {

                Label2.Text = "Chào! Nhân viên, " + Session["name"];

            }
            HpThemanh.Visible = false;
            HpXe.Visible = false;
            HyperLink1.Visible = false;
          
            HyperLink3.Visible = false;
            if ((string)Session["role"] != "User")
            {
                if ((string)Session["role"] == "Admin")
                {
                    HpThemanh.Visible = true;
                    HpXe.Visible = true;
                    HyperLink1.Visible = true;
                    HyperLink3.Visible = true;
                  

                }
            }
            else
            {
                Response.Redirect("~/403page.aspx");
            }

        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Remove("role");
            Session.Remove("name");
            
            bool gone = (Session["name"] == null);
            if (gone)
            {
                Response.Redirect("~/HomeSite/HomePage.aspx");
            }
        }
    }
}