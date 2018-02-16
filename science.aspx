<%@ Page Title="" Language="C#" MasterPageFile="~/recc.Master" AutoEventWireup="true" CodeBehind="science.aspx.cs" Inherits="home.science" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


 <style type="text/css">
        .style6
        {
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
        }
        .style7
        {
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
        }
        .style9
        {
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            background-color: #009900;
        }
        .style12
        {
            background-color: #FF9900;
        }
        .style13
        {
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            background-color: #FF9900;
        }
        .style14
        {
            text-align: center;
        }
    .style15
    {
        text-align: justify;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
    <p class="style14">
        &nbsp;</p>
    <p class="style14">
    SCIENCE</p>

<p class="style15">
    This stream is extremely popular in India considering that it is the gateway to 
    professional courses and career options such as engineering and medicine. Also, 
    students from a science background can apply for commerce, humanities courses in 
    college but the same does not hold true the other way around. If you are 
    interested in engineering, medicine and science related fields, this will fit 
    you perfectly. g the properties of an object by using your senses is an 
    important aspect in Science.</p>
<ul>
    <li class="style15">Physics</li>
    <li class="style15">Chemistry</li>
    <li class="style15">Mathematics (is optional, but important for students planning for 
        course related to Engineering etc., after XII)</li>
   <li class="style15">Biology (is optional, but important for students planning for 
        course related to Medicine etc., after XII)</li>
</ul>
<p>
    &nbsp;</p>
    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:Button ID="Button1" runat="server" CssClass="style13" 
        Text="Options in Science" Width="169px"/>
    <asp:Button ID="Button3" runat="server" Text="Top Colleges" Width="145px" 
        CssClass="style12"  />
    <asp:Button ID="Button2" runat="server" Text="Student References" 
        style="margin-left: 0px" CssClass="style12" />
    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    </p>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
