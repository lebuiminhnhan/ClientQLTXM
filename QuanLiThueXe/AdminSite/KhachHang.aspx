<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminSite.Master" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="QuanLiThueXe.AdminSite.KhachHang" %>
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
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                          <div class="row">
                            <div class="col-lg-12">
                               
                                
                                
                                <div class="table-responsive table--no-card m-b-30">
                                    <asp:GridView  CssClass="table table-borderless table-striped table-earning" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                                       <Columns>
                                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                                           
                                        </Columns>
                                    </asp:GridView>
                                    <asp:TextBox CssClass="form-control" Visible="false"  ID="TextBox1" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                       
                                    </div>
                                    <div class="card-body card-block">
                                          <asp:Panel ID="Panel1" runat="server">
                       
											<div class="form-group">
													<asp:Label ID="Label3" runat="server" Text="Họ và tên:"></asp:Label>
                                                  <asp:TextBox CssClass="form-control"  ID="txtten" runat="server"></asp:TextBox>

												</div>
                                                  <div class="form-group">
													<asp:Label ID="Label7" runat="server" Text="Giới tính:"></asp:Label>
                                                   
                                                      <asp:CheckBox ID="CheckBox1" runat="server" Text="Nam" />
                                                       <asp:CheckBox ID="CheckBox2" runat="server" Text="Nữ" />
												</div>
                                                 <div class="form-group">
													<asp:Label ID="Label4" runat="server" Text="Năm sinh:"></asp:Label>
                                                  <asp:TextBox CssClass="form-control" TextMode="Date"  ID="Textnamsinh" runat="server"></asp:TextBox>

												</div>
                                                  <div class="form-group">
													<asp:Label ID="Label5" runat="server" Text="Số CMND:"></asp:Label>
                                                  <asp:TextBox CssClass="form-control" TextMode="Number"  ID="Textcmnd" runat="server"></asp:TextBox>

												</div>
                                                    <div class="form-group">
													<asp:Label ID="Label6" runat="server" Text="Địa chỉ:"></asp:Label>
                                                  <asp:TextBox CssClass="form-control"   ID="Textdiachi" runat="server"></asp:TextBox>

												</div>
												<div class="form-group">
													<asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                                                  <asp:TextBox CssClass="form-control" TextMode="Email" ID="Textemail" runat="server"></asp:TextBox>

												</div>
                                                <div class="form-group">
													<asp:Label ID="Label9" runat="server" Text="Số điện thoại:"></asp:Label>
                                                  <asp:TextBox CssClass="form-control" TextMode="Number"  ID="Textsdt" runat="server"></asp:TextBox>

												</div>
												<asp:Button runat="server"  CssClass="btn btn-info" ID="them" Text="Thêm" OnClick="them_Click"/>
                  
									<asp:Button runat="server" Visible="false" CssClass="btn btn-info" ID="Button1" Text="Cập Nhật" OnClick="Button1_Click"/>
										<asp:Button runat="server"   CssClass="btn btn-danger" ID="Button4" Text="Xóa" OnClick="Button4_Click"/>
                    </asp:Panel>

                                        <asp:Panel ID="Panel2" runat="server">
                                            <h6>Bạn có chắc muốn xóa khách hàng</h6>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                            <h6>không?</h6>
                                            									<asp:Button runat="server"  CssClass="btn btn-danger" ID="Button2" Text="Xóa" OnClick="Button2_Click"/>
									<asp:Button runat="server"  CssClass="btn btn-info" ID="Button3" Text="Hủy" OnClick="Button3_Click"/>


                                        </asp:Panel>
                                        
                                    </div>
                                    
                                </div>
                            </div>
               
                 
                        </div> 
                      
                                
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
