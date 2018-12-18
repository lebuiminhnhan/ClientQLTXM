<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminSite.Master" AutoEventWireup="true" CodeBehind="ThanhToan.aspx.cs" Inherits="QuanLiThueXe.AdminSite.ThanhToan" %>
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
                                    <asp:GridView DataKeyNames="SoDDT" CssClass="table  table-striped table-earning" ID="GridView1" runat="server"  OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                                        <Columns>
                                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Chọn" />
                                        </Columns>
                                    </asp:GridView>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>SoDTT</th>
                                            </tr>
                                            
                                        </thead>
                                    </table>
                                     <asp:GridView DataKeyNames="SoDDT" CssClass="table table-borderless table-striped table-earning" ID="GridView2" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanging="GridView2_SelectedIndexChanging" >
                                        <Columns>
                                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Thanh Toán" />
                                            <asp:BoundField DataField="SoDDT" HeaderText="SoDDT" SortExpression="SoDDT" />
                                            <asp:BoundField DataField="HoTenKH" HeaderText="Tên Khách Hàng" SortExpression="HoTenKH" />
                                            <asp:BoundField DataField="HoTenNV" HeaderText="Tên Nhân Viên " SortExpression="HoTenNV" />
                                            <asp:BoundField DataField="GiaThueNgay" HeaderText="Giá Thuê/Ngày" SortExpression="GiaThueNgay" />
                                            <asp:BoundField DataField="NgayThue" HeaderText="Ngày Thuê Xe" SortExpression="NgayThue" />
                                            <asp:BoundField DataField="NgayTra" HeaderText="Ngày Trả Xe" SortExpression="NgayTra" />
                                            <asp:BoundField DataField="SoNgay" HeaderText="Số Ngày Thuê" SortExpression="SoNgay" />
                                            <asp:BoundField DataField="ThanhTien" HeaderText="Tiền Thanh Toán" SortExpression="ThanhTien" />
                                        </Columns>
                                    </asp:GridView>
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
