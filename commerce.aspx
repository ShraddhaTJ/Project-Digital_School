<%@ Page Title="" Language="C#" MasterPageFile="~/recc.Master" AutoEventWireup="true" CodeBehind="commerce.aspx.cs" Inherits="home.commerce" %>
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
        COMMERCE</p>
    <p class="style10">
        &nbsp;Commerce can be illustrated as study of trade and business. The stream has been 
        increasingly chosen by a large chunk of students after completion of 10th 
        standard, due to its attractiveness in terms of finding early employment and 
        also beginning of entrepreneurship.</p>
    <p class="style10">
        &nbsp;There are many degree and diploma courses which encompasses the Commerce stream. 
        Some of the key subjects which are taught in the commerce stream are:
    </p>
<ul>
    <li>
        <p class="style10">
            Economics</p>
    </li>
    <li>
        <p class="style10">
            Accountancy
        </p>
    </li>
    <li>
        <p class="style10">
            Business Studies and business law<br />
        <br style="mso-special-character:line-break" />
        <![if !supportLineBreakNewLine]>
        <br style="mso-special-character:line-break" />
        <![endif]>
        </p>
    </li>
</ul>
<p class="style4">
        &nbsp;<asp:Button ID="Button3" runat="server" Text="Options in Commerce" 
            Width="137px" CssClass="style11" />
        <asp:Button ID="Button1" runat="server" Text="Top Colleges"  Width="166px" CssClass="style11" />
        <asp:Button ID="Button2" runat="server" Text="Student References" 
            Width="145px" CssClass="style11" />
    </p>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


</asp:Content>