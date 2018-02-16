<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="DisplayResults.aspx.cs" Inherits="home.DisplayResults" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
   <%-- <form id="form1" runat="server">--%>
    <div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
    
    </div>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="BtnHome" runat="server" onclick="BtnHome_Click" Text="BACK" />
    <br />
    <br />
   <%-- </form>--%>
</body>
</html>
</asp:Content>
