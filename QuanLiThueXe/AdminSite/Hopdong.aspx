<%@ Page Title="Hợp đồng thuê xe" Language="C#" MasterPageFile="~/AdminSite/AdminSite.Master" AutoEventWireup="true" CodeBehind="Hopdong.aspx.cs" Inherits="QuanLiThueXe.AdminSite.Hopdong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
          <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
    <script src="https://cdn.ckeditor.com/4.10.1/standard/ckeditor.js"></script>
      <script type="text/javascript">
      $(function () {
            $('#ContentPlaceHolder1_GridView1').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
      }
      );
    </script>
   
    </asp:content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                          <div class="row">
                              <asp:Label ID="Label2" runat="server" Visible="false" Text="Label"></asp:Label>
                              <h3>Quản lí hợp đồng</h3>
                              <br />
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-10">
                                        <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="CheckTrangThai" runat="server">
                                    <asp:ListItem>Tất Cả</asp:ListItem>
                                    <asp:ListItem>Đã Thanh Toán</asp:ListItem>
                                    <asp:ListItem>Đang Thuê</asp:ListItem>
                                        <asp:ListItem>Đã hủy</asp:ListItem>
                                </asp:DropDownList>
                                    
                                </div>
                                    </div>
                                    <div class="col-2">
                                        <asp:Button ID="btnLoc" runat="server" Text="Lọc" CssClass="btn btn-info btn-sm" OnClick="btnLoc_Click" />
                                    </div>
                                </div>
                                
                                
                                <div class="table-responsive table--no-card m-b-30">
                                    <asp:GridView DataKeyNames="SoDDT" CssClass="table table-borderless table-striped table-earning" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                                        <Columns>
                                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                                        </Columns>
                                       
                                    </asp:GridView>
                                    <asp:TextBox ID="TextBox1" Visible="false" runat="server"></asp:TextBox>
                                     <asp:TextBox ID="TextBox2" Visible="false" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <asp:Panel ID="Panel1" runat="server">
                               <div class="row">
                            <div class="col-sm-12 col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                       
                                    </div>
                                    <div class="card-body card-block">
                                       
                                        
                                        <div class="row form-group">
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Chọn Xe:</label>
                                                    <asp:DropDownList ID="DropXe" CssClass="form-control" runat="server" ></asp:DropDownList>
                                                    
                                                   
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Nhân viên lập hợp đồng:</label>
                                                    <asp:DropDownList ID="Dropnhanvien" CssClass="form-control" runat="server"></asp:DropDownList>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Chọn khách hàng:</label>
                                                    <asp:DropDownList ID="dropkhachhang" CssClass="form-control" runat="server" ></asp:DropDownList>
                                                    
                                                </div>
                                            </div>
                                        </div>


                                        
                                    </div>
                                    
                                </div>
                            </div>
               
                            <div class="col-sm-12 col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                      
                                    </div>
                                    <div class="card-body card-block">
                                        <div class="row form-group">
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Ngày thuê:</label>
                                                        <asp:TextBox ID="txtngaythue" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Ngày trả:</label>
                                                    <asp:TextBox ID="txtngaytra" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                       
                                        <asp:Button ID="btnnhap" runat="server" Text="Nhập" CssClass="btn btn-primary btn-sm" OnClick="btnnhap_Click" />
                                        
                                       
                                    </div>
                                </div>
                            </div>
                        </div> 
                                        </asp:Panel>
                        <asp:Panel ID="Panel2" Visible="false"  runat="server">
                             <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                       
                                    </div>
                                    <div class="card-body card-block">
                                       
                             <h6>Bạn có chắc muốn hủy hợp đồng với mã SDDT</h6>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                            <h6>này không?</h6>
                                            									<asp:Button runat="server"  CssClass="btn btn-danger" ID="Button2" Text="Xóa" OnClick="Button2_Click"/>
									<asp:Button runat="server"  CssClass="btn btn-info" ID="Button3" Text="Hủy" OnClick="Button3_Click"/>
</div>
                                    </div>
                                </div>
                                 </div>
                        </asp:Panel>
                       
                      
                                
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Thuê xe VIVU</p>
                                </div>
                            </div>
                        </div>
                 
                    </div>
                </div>
            </div>
</asp:Content>
