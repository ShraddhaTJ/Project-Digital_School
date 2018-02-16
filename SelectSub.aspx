<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="SelectSub.aspx.cs" Inherits="home.SelectSub" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <%--<form id="form1" runat="server">--%>
    <div style="margin-left: 80px">
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Maths</asp:ListItem>
            <asp:ListItem>Science</asp:ListItem>
            <asp:ListItem>GK</asp:ListItem>
            <asp:ListItem>Social Sciences</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
    
    </div>
    <div style="margin-left: 80px">
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            Text="Select Subject" />
    </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
