<%@ Page Title="" Language="C#" MasterPageFile="~/recc.Master" AutoEventWireup="true" CodeBehind="arts.aspx.cs" Inherits="home.arts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style4
    {
        text-align: center;
    }
    .style10
    {
        text-align: justify;
    }
        .style11
        {
            background-color: #FF9900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p class="style4">
        &nbsp;</p>
<p class="style4">
    ARTS</p>
<p class="style4">
    &nbsp;</p>
<div class="style10" data-hveid="33">
    <span class="_Tgc">If you are interested to pursue a career in Mass Media, <b>
    Journalism</b>, Literature, Languages, <b>Sociology</b>, Social Service, Human
    <b>Psychology</b>, History, Geography, Political Science, <b>Psychology</b>, <b>
    Sociology</b>, Anthropology, Human Resources, Economics and history this course 
    is apt for you.</span></div>
<p class="style4">
    &nbsp;</p>
<p class="style4">
    <asp:Button ID="Button4" runat="server" Text="Options in Arts" 
        style="background-color: #FF9900" />
    <asp:Button ID="Button2" runat="server" Text="Top Colleges" 
        CssClass="style11" />
    <asp:Button ID="Button3" runat="server" Text="Student References" 
        CssClass="style11" />
</p>
<p class="style4">
    &nbsp;</p>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
