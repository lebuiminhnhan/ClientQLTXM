<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminSite.Master" AutoEventWireup="true" CodeBehind="TaiKhoan.aspx.cs" Inherits="QuanLiThueXe.AdminSite.TaiKhoan" %>
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
                       Thêm Tài khoản Nhân Viên
											<div class="form-group">
													<asp:Label ID="Label3" runat="server" Text="User Name:"></asp:Label>
                                                  <asp:TextBox CssClass="form-control"  ID="txtten" runat="server"></asp:TextBox>

												</div>
                                                 <div class="form-group">
                                                    <label for="city" class=" form-control-label">Chọn nhân viên:</label>
                                                    <asp:DropDownList ID="Dropnhanvien" CssClass="form-control" runat="server"></asp:DropDownList>
                                                    
                                                </div>
                                               
                                                
                                                    <div class="form-group">
													<asp:Label ID="Label6" runat="server" Text="Mật khẩu:"></asp:Label>
                                                  <asp:TextBox CssClass="form-control"  TextMode="Password"  ID="Textpass" runat="server"></asp:TextBox>
                                                    <div class="form-group">
													<asp:Label ID="Label9" runat="server" Text="Nhập lại mật khẩu:"></asp:Label>
                                                  <asp:TextBox CssClass="form-control" TextMode="Password"  ID="Textcopass"  runat="server"></asp:TextBox>
                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToValidate="Textcopass"
     CssClass="ValidationError"
     ControlToCompare="Textpass"
     ErrorMessage="Không khớp, mời nhập lại" 
     ToolTip="Password must be the same" />
												</div>
												</div>
												<div class="form-group">
													<asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                                                  <asp:TextBox CssClass="form-control" TextMode="Email" ID="Textemail" runat="server"></asp:TextBox>

												</div>
                                               
												<asp:Button runat="server"  CssClass="btn btn-info" ID="them" Text="Thêm" OnClick="them_Click" />
                  
									
										
                    </asp:Panel>

                                        <asp:Panel ID="Panel2" Visible="false" runat="server">
                                            <h6>Bạn có chắc muốn khóa tài khoản</h6>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                            <h6>không?</h6>
                                            									<asp:Button runat="server"  CssClass="btn btn-danger" ID="Button2" Text="Xóa" OnClick="Button2_Click" />
									<asp:Button runat="server"  CssClass="btn btn-info" ID="Button3" Text="Hủy" OnClick="Button3_Click" />


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
