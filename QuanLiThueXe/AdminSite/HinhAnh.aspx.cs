using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLiThueXe.AdminSite
{
	public partial class HinhAnh : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if(!IsPostBack)
            {
                DropXe.DataSource = sv.DanhSachAllXe();
                DropXe.DataTextField = "TenBangSo";
                DropXe.DataValueField = "MaXe";
                DropXe.DataBind();
            }
		}
        ServiceReference1.QLTXMSoapClient sv = new ServiceReference1.QLTXMSoapClient();
        protected void Upload_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {

                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/image/") + filename);
                    StatusLabel.Text = "Upload status: File uploaded!";
                    sv.UploadHinhAnh(filename, txtten.Text, int.Parse(DropXe.SelectedValue));
                
                    Image1.ImageUrl = "~/image/" + filename;
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
    }
}