<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminSite.Master" AutoEventWireup="true" CodeBehind="Xe.aspx.cs" Inherits="QuanLiThueXe.AdminSite.Xe" %>
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
                                    <asp:GridView CssClass="table table-borderless table-striped table-earning" ID="GridView1" runat="server"></asp:GridView>
                                    
                                </div>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col-sm-12 col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                       
                                    </div>
                                    <div class="card-body card-block">
                                        <div class="row form-group">
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Loại Xe:</label>
                                                    <asp:DropDownList ID="DropLX" CssClass="form-control" runat="server" ></asp:DropDownList>
                                                    
                                                   
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Hãng Sản Xuất:</label>
                                                    <asp:DropDownList ID="DropNcc" CssClass="form-control" runat="server"></asp:DropDownList>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Giá thuê 1 ngày:</label>
                                                    <asp:TextBox ID="txtgiathue" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                             <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Mức giảm giá:</label>
                                                    <asp:TextBox ID="txtmucgiam" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                                    
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
                                                    <label for="city" class=" form-control-label">Tên Xe:</label>
                                                        <asp:TextBox ID="txttenxe" CssClass="form-control"  runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Màu Sắc Xe:</label>
                                                    <asp:TextBox ID="txtmau" CssClass="form-control"  runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    <label for="city" class=" form-control-label">Bảng Số Xe:</label>
                                                    <asp:TextBox ID="txtbangso" CssClass="form-control"  runat="server"></asp:TextBox>
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
