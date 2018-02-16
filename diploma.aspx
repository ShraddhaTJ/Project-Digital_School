<%@ Page Title="" Language="C#" MasterPageFile="~/recc.Master" AutoEventWireup="true" CodeBehind="diploma.aspx.cs" Inherits="home.diploma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .style10
    {
        text-align: center;
    }
        .style11
        {
            background-color: #FF9900;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <p class="style10">
    DIPLOMA IN COMPUTER SCIENCE/ INFORMATION TECHNOLOGY/ ELECTRONICS AND 
    TELECOMMUNICATION/ ELECTRICAL/ MECHANICAL and other related fields</p>
Students after completing their 10<sup>th</sup> standard can opt for short and 
long term diploma courses. Diploma courses of varying field of study are 
available for students to choose from. Many courses are quite off beat and offer 
specialization in a subject or discipline of study. With the introduction of 
such courses and many others too education industry has diversified itself in a 
huge way giving greater scope.<p>
    &nbsp;</p>
<p class="style10">
    <asp:Button ID="BtnOpt" runat="server" Text="Options in Diploma " 
         style="background-color: #FF9900" 
        PostBackUrl="~/optdiploma.aspx" />
    <asp:Button ID="BtnClg" runat="server" Text="Top Colleges" 
         CssClass="style11" 
        PostBackUrl="~/coldiploma.aspx" />
    <asp:Button ID="BtnStud" runat="server" Text="Student References" 
        CssClass="style11" />
</p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
