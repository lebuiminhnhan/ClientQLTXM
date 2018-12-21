<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminSite.Master" AutoEventWireup="true" CodeBehind="DatThue.aspx.cs" Inherits="QuanLiThueXe.AdminSite.DatThue" %>
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
                                <h3>Quản lí đặt xe</h3>
                            <div class="col-lg-12">
                                <div class="table-responsive table--no-card m-b-30">
                                    <asp:GridView CssClass="table table-borderless table-striped table-earning" ID="GridView1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" runat="server" >
                                        <Columns>
                                            <asp:CommandField SelectText="Hủy Đặt" ShowSelectButton="True" />
                                        </Columns>
                                    </asp:GridView>
                                    
                                </div>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col-sm-12 col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                       Xác nhận hủy đơn đặt xe
                                    </div>
                                    <div class="card-body card-block">
                                       <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Xe:</label>
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" Enabled="false"  runat="server"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                        <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Tên khách hàng:</label>
                                                    <asp:TextBox ID="TextBox2" CssClass="form-control" Enabled="false"  runat="server"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                        <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Số điện thoại:</label>
                                                    <asp:TextBox ID="TextBox3" CssClass="form-control" Enabled="false"  runat="server"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                         <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Ngày đặt</label>
                                                    <asp:TextBox ID="TextBox4" CssClass="form-control" Enabled="false"  runat="server"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                    </div>
                                     <div class="card-footer">
                                       
                                        <asp:Button ID="btnnhap" runat="server" Text="Xác nhận" CssClass="btn btn-primary btn-lg" OnClick="btnnhap_Click" />

                                       <asp:TextBox ID="TextBox5" Visible="false" CssClass="form-control" Enabled="false"  runat="server"></asp:TextBox>
                                                    
                                    </div>
                                </div>
                            </div>
               
                         
                        </div> 
                    
                                
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Thuê Xe VIVU</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

</asp:Content>
