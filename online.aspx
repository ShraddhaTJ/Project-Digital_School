<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="online.aspx.cs" Inherits="home.online" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

        <style type="text/css">
        .style1
        {
            text-align: left;
        }
        #form1
        {
            text-align: right;
        }
    </style>

</head>
<body bgcolor="white" alink="White">
    
    <div style="text-align: center; background-color: orange;">
    
        ONLINE EXAM<br />
    
    </div>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            Time Remaining:<asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
            </asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>
    <p style="margin-left: 40px;" class="style1">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        .<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p style="margin-left: 40px;" class="style1">
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" 
            AutoPostBack="True" oncheckedchanged="RadioButton2_CheckedChanged" ForeColor="Red" 
             />
&nbsp;&nbsp;&nbsp;
    </p>
    <p style="margin-left: 40px;" class="style1">
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="a" 
            AutoPostBack="True" ForeColor="Red" />
    </p>
    <p style="margin-left: 40px;" class="style1">
        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="a" 
            AutoPostBack="True" ForeColor="Red" />
    </p>
    <p style="margin-left: 40px;" class="style1">
        <asp:RadioButton ID="RadioButton5" runat="server" GroupName="a" 
            AutoPostBack="True" ForeColor="Red" />
    </p>
    <p style="text-align: left">
       
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <asp:ListBox ID="ListBox1" runat="server" Visible="False"></asp:ListBox>
        <asp:Label ID="Label3" runat="server" ForeColor="Black" BackColor="Lime"></asp:Label>
       
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server"></asp:Label>
       
        <asp:ListBox ID="ListBox2" runat="server" Visible="False"></asp:ListBox>
       
    </p>
   
    <div>
    
    </div>
    <p style="text-align: left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Previous" onclick="Button1_Click" style="text-align: center" 
            />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Next" onclick="Button2_Click" 
            style="height: 26px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Finish" onclick="Button3_Click" 
            Width="45px" />
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="View Results" Visible="False" />
    </p>
    </form>
</body>
</html>