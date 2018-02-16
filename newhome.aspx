<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="newhome.aspx.cs" Inherits="home.newhome" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <html>
<head>
<title></title>
<link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Montserrat+Alternates' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="main-bottom">
                    <div class="wrap">
                        <div class="content-bottom">
                            <div class="col_1_of_3 span_1_of_3">
                                <h3 style="text-align: left">
                                    Welcome to our Centre!</h3>
                                <p class="desc2" style="text-align: left">
                                    <strong>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt.</strong></p>
                                <p class="desc1" style="text-align: left">
                                    &nbsp;Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut 
                                    aliquip ex ea commo tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut conse ctetur adipisicing elit, sed do eiusmod conse ctetur adipisicing elit, sed do eiusmod</p>
                                <a href="#" class="btn btn-primary"><span>Read more</span><img src="web/images/more_arrow.png" alt=""></a>
                            </div>


                            <div style="float:left">
                                
                                <img alt="" src="images/sch.png" 
                                    style="width: 276px; height: 230px" />
                                <br />
                                <table style="width:60%">
                                    <tr>
                                        <td class="style1" style="width: 80px">
                                            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                                        </td>
                                        <td style="width: 181px" width="10px">
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="style1" style="width: 80px">
                                            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                                        </td>
                                        <td style="width: 181px" width="10px">
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <div>
                                    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click1" />
                                    <br />
                                </div>
                                <br />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <br />
                                    
                                    
                                    
                                    </div>

                              

                            <div class="col_1_of_3 span_1_of_3">
                                <h3>
                                    Latest News</h3>
                                <div class="latest-news-grid">
                                    <div class="latest-news-info">
                                        <div style="text-align: left">
                                        <a href="#">Jan 21.01.2013</a>
                                        </div>
                                        <p class="desc1" style="text-align: left">
                                            Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor</p>
                                    </div>
                                    <div class="clear">
                                    </div>
                                </div>
                                <div class="latest-news-grid">
                                    <div class="latest-news-info">
                                        <div style="text-align: left">
                                        <a href="#">Jan 21.01.2013</a>
                                        </div>
                                        <p class="desc1" style="text-align: left">
                                            Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor</p>
                                    </div>
                                    <div class="clear">
                                    </div>
                                </div>
                                <div class="latest-news-grid">
                                    <div class="latest-news-info">
                                        <div style="text-align: left">
                                        <a href="#">Jan 21.01.2013</a>
                                        </div>
                                        <p class="desc1" style="text-align: left">
                                            Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor</p>
                                    </div>
                                    <div class="clear">
                                    </div>
                                </div>
                                <div class="latest-news-grid">
                                    <div class="latest-news-info">
                                        <div style="text-align: left">
                                        <a href="#">Jan 21.01.2013</a>
                                        </div>
                                        <p class="desc1" style="text-align: left">
                                            Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor</p>
                                    </div>
                                    <div class="clear">
                                    </div>
                                </div>
                                <div style="text-align: left">
                                &nbsp;</div>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                </div>
                
                </body>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
