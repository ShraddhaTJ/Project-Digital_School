<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="selling.aspx.cs" Inherits="home.selling" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head >
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="swipebox.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style2
        {
            width: 150px;
        }
        .style5
        {
            height: 23px;
            width: 150px;
            color: #FF3300;
        }
        .style6
        {
            width: 136px;
        }
        .style7
        {
            height: 23px;
            width: 136px;
        }
        .style8
        {
            color: #FF3300;
        }
        .style9
        {
            width: 150px;
            color: #FF3300;
        }
        .style10
        {
            width: 136px;
            color: #FF3300;
        }
        .style11
        {
            text-align: right;
            height: 23px;
            color: #FF3300;
        }
    </style>
</head>
<body>

    <%--<form id="form1" runat="server">--%>
    <div>

    <div id="sell" 
            
            style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: uppercase; color: #800080; background-color: #White;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            CellPadding="4" GridLines="None" ForeColor="#333333" 
            >
            <AlternatingRowStyle BackColor="white" />
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <span class="style8">SELL NEW 
        ITEM:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DELETE AN ITEM:<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br/>
        </span>
    <table class="style1">
        <tr>
            <td class="style9" bgcolor="white" 
                style="background-color: white;">
                &nbsp;</td>
            <td bgcolor="white" class="style10" 
                style="background-color: white;">
                &nbsp;&nbsp;</td>
            <td bgcolor="white" class="style8">
                &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>
                <span class="style8">&nbsp;&nbsp; &nbsp;</td>
            <td bgcolor="white">
                BOOK ID:</span></td>
            <td bgcolor="white">
                <asp:TextBox ID="TxtBidDel" runat="server" ValidationGroup="aa" Width="170px" 
                    CssClass="style8"></asp:TextBox>
            </td>
            <td bgcolor="white" style="background-color: white">
                <span class="style8">&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TxtBidDel" ErrorMessage="Please Enter Book Id" 
                    ValidationGroup="aa"></asp:RequiredFieldValidator>
                &nbsp;</td>
            <td>
                </span></td>
        </tr>
        <tr>
            <td class="style2" bgcolor="white" style="color: #000080">
    <asp:Label ID="Label2" runat="server" Text="Book Name" CssClass="style8"></asp:Label>
                <span class="style8">&nbsp;:</span></td>
            <td bgcolor="white" class="style6" style="color: #000080">
    <asp:TextBox ID="TxtBname" runat="server" Width="170px" ValidationGroup="bb" 
                    CssClass="style8"></asp:TextBox>
            </td>
            <td bgcolor="white" class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TxtBname" ErrorMessage="Please Enter Book Name" 
                    ValidationGroup="bb"></asp:RequiredFieldValidator>
            </td>
            <td>
                <span class="style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td bgcolor="white">
                BOOK NAME:</span></td>
            <td bgcolor="white">
                <asp:TextBox ID="TxtNameDel" runat="server" ValidationGroup="aa" Width="170px" 
                    CssClass="style8"></asp:TextBox>
            </td>
            <td bgcolor="white" style="background-color: white">
                <span class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TxtNameDel" ErrorMessage="Please Enter Book Name" 
                    ValidationGroup="aa"></asp:RequiredFieldValidator>
            </td>
            <td>
                </span></td>
        </tr>
        <tr>
            <td class="style2" bgcolor="white" style="color: #000080">
     <asp:Label ID="Label3" runat="server" Text="Author" CssClass="style8"></asp:Label>
                <span class="style8">&nbsp;:</span></td>
            <td bgcolor="white" class="style6" style="color: #000080">
    <asp:TextBox ID="TxtAuth" runat="server" ValidationGroup="bb" Width="170px" 
                    CssClass="style8"></asp:TextBox>
            </td>
            <td bgcolor="white" class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TxtAuth" ErrorMessage="Please Enter Author Name" 
                    ValidationGroup="bb"></asp:RequiredFieldValidator>
            </td>
            <td>
                <span class="style8"></td>
            <td bgcolor="white">
                &nbsp;</td>
            <td bgcolor="white">
                &nbsp;</td>
            <td bgcolor="white" style="background-color: white">
                &nbsp;</td>
            <td>
                </span></td>
        </tr>
        <tr>
            <td class="style2" bgcolor="white" style="color: #000080">
    <asp:Label ID="Label4" runat="server" Text="Book Price" CssClass="style8"></asp:Label>
                <span class="style8">&nbsp;:</span></td>
            <td bgcolor="white" class="style6" style="color: #000080">
    <asp:TextBox ID="TxtBprice" runat="server" Width="170px" ValidationGroup="bb" 
                    CssClass="style8"></asp:TextBox>
            </td>
            <td bgcolor="white" class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TxtBprice" ErrorMessage="Please Enter Book Price" 
                    ValidationGroup="bb"></asp:RequiredFieldValidator>
            </td>
            <td>
                <span class="style8"></td>
            <td bgcolor="white">
                </span></td>
            <td bgcolor="white">
                <asp:Button ID="BtnDelete" runat="server" onclick="Button6_Click" Text="DELETE" 
                    Width="94px" ValidationGroup="aa" CssClass="style8" />
            </td>
            <td bgcolor="white" style="background-color: white">
                <span class="style8"></td>
            <td>
                </span></td>
        </tr>
        <tr>
            <td class="style5" bgcolor="white">
                Your Name:</td>
            <td id="TxtYname" class="style7" bgcolor="white" style="color: #000080">
    <asp:TextBox ID="TxtYname" runat="server" Width="170px" ValidationGroup="bb" 
                    CssClass="style8"></asp:TextBox>
            </td>
            <td id="TxtYname" class="style11" bgcolor="white">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TxtYname" ErrorMessage="Please Enter Your Name" 
                    ValidationGroup="bb"></asp:RequiredFieldValidator>
            </td>
            <td id="TxtYname" class="style1">
                <span class="style8"></td>
            <td id="TxtYname" class="style1" bgcolor="white">
                &nbsp;</td>
            <td id="TxtYname" class="style1" bgcolor="white">
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td id="TxtYname" class="style1" bgcolor="white" 
                style="background-color: white">
                &nbsp;</td>
            <td id="TxtYname" class="style1">
                </span></td>
        </tr>
        <tr>
            <td class="style9" bgcolor="white">
                Contact no. :</td>
            <td bgcolor="white" class="style6" style="color: white">
                <asp:TextBox ID="TxtContact" runat="server" ValidationGroup="bb" Width="170px" 
                    CssClass="style8"></asp:TextBox>
            </td>
            <td bgcolor="white" class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TxtContact" ErrorMessage="Please Enter Phone No." 
                    ValidationGroup="bb"></asp:RequiredFieldValidator>
            </td>
            <td>
                <span class="style8"></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="background-color: white">
                &nbsp;</td>
            <td>
                </span></td>
        </tr>
        <tr>
            <td class="style9" bgcolor="white">
                &nbsp;</td>
            <td bgcolor="white" class="style10">
                &nbsp;</td>
            <td bgcolor="white" class="style8">
                &nbsp;</td>
            <td>
                <span class="style8"></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="background-color: white">
                &nbsp;</td>
            <td>
                </span></td>
        </tr>
        <tr>
            <td class="style9" bgcolor="white">
                &nbsp;</td>
            <td bgcolor="white" class="style6" style="color: #000080">
    <asp:Button ID="BtnInsert" runat="server" Text="INSERT" Width="108px" 
        onclick="Button2_Click" ValidationGroup="bb" CssClass="style8" />
    <asp:Label ID="Label6" runat="server" CssClass="style8"></asp:Label>
            </td>
            <td bgcolor="white" class="style8">
                &nbsp;</td>
            <td>
                <span class="style8"></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="background-color: white">
                &nbsp;</td>
            <td>
                </span></td>
        </tr>
    </table>
<br/>
    &nbsp;&nbsp;&nbsp;<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br/>
    
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
     <asp:Button ID="BtnNext" runat="server" onclick="Button5_Click" 
        Text="BOOKS FOR BUYING" CausesValidation="False" />
    <br/>
    <br/>
        <br />
        <br />
        <br />
    <br />
    <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;
     <br/>
    <br/>
    <br/>
    &nbsp;&nbsp;&nbsp;
    <br/>
    <br/>
    <br/>
    &nbsp;&nbsp;&nbsp;
    <br/>
    <br/>
    <br/>

</div>
    </div>
   <%-- </form>--%>
</body>
</html>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
