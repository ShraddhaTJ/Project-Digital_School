<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="careerRecResult.aspx.cs" Inherits="home.careerRecResult" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div style="border:solid">
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" 
        onclick="Button1_Click" Text="GET  MORE INFORMATION&gt;&gt;" Width="211px" />
    <br />
    <br />
    </div>
</asp:Content>
