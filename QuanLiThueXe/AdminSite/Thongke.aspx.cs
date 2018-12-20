using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
    public partial class Thongke : System.Web.UI.Page
    {
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "User" && (string)Session["role"] != null)
            {
                
            }
            else
            {
                Response.Redirect("~/403page.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Chart1.DataSource = sv.DemLuot(int.Parse(DropDownList1.SelectedValue));
            Chart1.Legends.Add("average_marks").Title = "Biểu đồ lượt thuê xe";
            Chart1.ChartAreas["ChartArea1"].AxisY.Title = " Số Lượt Thuê";
            Chart1.ChartAreas["ChartArea1"].AxisX.Title = "Xe";
            Chart1.Series["SoLuot"].XValueMember = "Xe";
            Chart1.Series["SoLuot"].YValueMembers = "SoLuot";
            Chart1.DataBind();


            Chart2.DataSource = sv.ThongKeTienTam(int.Parse(DropDownList1.SelectedValue));
            Chart2.Legends.Add("average_marks").Title = "Biểu đồ doanh thu xe";
            Chart2.ChartAreas["ChartArea1"].AxisY.Title = "Tiền doanh thu";
            Chart2.ChartAreas["ChartArea1"].AxisX.Title = "Xe";
            Chart2.Series["VND"].XValueMember = "BangSo";
            Chart2.Series["VND"].YValueMembers = "ThanhTien";
            Chart2.DataBind();
        }
    }
}