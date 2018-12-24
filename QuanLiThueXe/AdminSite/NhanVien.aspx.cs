using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
    public partial class NhanVien : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] == "Admin")
            {
                GridView1.DataSource = sv.DanhSachNhanVien();
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("~/403page.aspx");
            }
           
        }
    }
}