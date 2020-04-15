<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body><center>
    <form id="form1" runat="server">
    <h1><asp:Label ID="Label1" runat="server" Text="Forget Password"></asp:Label></h1>
    <br />
    <table style="width: 70%;">
        <tr>
            <td>
    <asp:Label ID="Label2" runat="server" Text="Enter Your Register Mobile No"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Mobile no Required"></asp:RequiredFieldValidator>
             </td>
        </tr>
   
        <tr>
            <td>
        <asp:Label ID="Label3" runat="server" Text="enter new password"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="password Required"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label4" runat="server" Text="confirm password"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="conform password Required"></asp:RequiredFieldValidator>
                <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
        ErrorMessage="password is not same"></asp:CompareValidator>
                </td>
        </tr>
        <tr>
            <td colspan="2">
    <asp:Button ID="Button3" runat="server" Text="reset password" onclick="Button3_Click" />
                </td>
        </tr>
    </table>
    
   
    </form></center>
</body>
</html>
