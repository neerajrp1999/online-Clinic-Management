<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FirstPageLogin.aspx.cs" Inherits="FirstPageLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="format.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
   <h1> <asp:Label ID="Label4" runat="server" style="margin-Top:50px;display:inline-block" Text="Dr.Vandana"></asp:Label></h1>
    <table style="width: 50%;">
            <tr>
                <td>
        <asp:Label ID="Label1" runat="server" style="margin-Top:20px;display:inline-block" 
                        Text="mobileno"></asp:Label>
                    </td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="10"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label2" runat="server" style="margin-Top:20px;display:inline-block" Text="Password"></asp:Label>
                    </td>
                <td>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td colspan=2>
        <asp:Button ID="Button1" runat="server" Text="Login" 
                        style="margin-Top:3px; display:inline-block" onclick="Button1_Click" />
                    </td>
            </tr>
            <tr>
                <td colspan=2>
    <a href="NewRegister.aspx" style="margin-Top:20px;display:inline-block">New Registeration</a><br />
    <a href="forgetpassword.aspx" style="margin-Top:20px;display:inline-block">Forgat Password</a>
                    </td>
            </tr>
        </table>
        &nbsp;<br />
        </center>
    </div>
    </form>
</body>
</html>
