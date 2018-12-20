<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminSite.Master" AutoEventWireup="true" CodeBehind="Thongke.aspx.cs" Inherits="QuanLiThueXe.AdminSite.Thongke" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                           
                          <div class="row">
                            <div class="col-sm-12 col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                       Thống kê xe có lượt thuê cao và tiền doanh thu theo tháng<asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2"></asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                        </asp:DropDownList><asp:Button ID="Button1" runat="server" Text="Xem" OnClick="Button1_Click" />
                                    </div>
                                    <div class="card-body card-block">
                                        <asp:Chart ID="Chart1" runat="server" Width="605px">
                                            <Series>
                                                <asp:Series Name="SoLuot" ChartType="Bar"></asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>
                                        
                                    </div>
                                    
                                </div>
                            </div>
               
                         
                        </div> 
                      <div class="row">
                            <div class="col-sm-12 col-lg-12">
                                <div class="card">
                               
                                    <div class="card-body card-block">
                                        <asp:Chart ID="Chart2" runat="server" Width="605px">
                                            <Series>
                                                <asp:Series Name="VND" ChartType="Bar"></asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                            </ChartAreas>
                                        </asp:Chart>
                                        
                                    </div>
                                    
                                </div>
                            </div>
               
                         
                        </div> 
                                
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="copyright">
                                    <p>Thuê Xe VIVU</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

</asp:Content>
