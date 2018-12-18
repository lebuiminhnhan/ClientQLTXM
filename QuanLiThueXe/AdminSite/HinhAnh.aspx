<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminSite.Master" AutoEventWireup="true" CodeBehind="HinhAnh.aspx.cs" Inherits="QuanLiThueXe.AdminSite.HinhAnh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                           
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
                                                    <label for="city" class=" form-control-label">Tên Ảnh:</label>
                                                    <asp:TextBox ID="txtten" CssClass="form-control"  runat="server"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                     <div class="input-group">
                                                <div class="custom-file">
                                                    <asp:FileUpload type="file" class="custom-file-input" ID="FileUploadControl" runat="server" />
                                                    <label class="custom-file-label" for="inputGroupFile04">Choose file</label>
                                                </div>
                              
                                                <div class="input-group-append">
                                                    <asp:Button ID="Upload" runat="server" class="btn btn-outline-secondary" Text="Upload" OnClick="Upload_Click" />
                                                </div>
                                            </div>
                                                </div>
                                            </div>
                                             
                                        </div>


                                        
                                    </div>
                                    
                                </div>
                            </div>
               
                             <div class="col-sm-12 col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                         <asp:Label runat="server" ID="StatusLabel"></asp:Label>
                                    </div>
                                    <div class="card-body card-block">
                                        <div class="row form-group">
                                            <div class="col-md-12 col-sm-12">
                                                <asp:Image ID="Image1"   runat="server" />
                                            </div>
                                            
                                           
                                             
                                        </div>


                                        
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
