<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewRegister.aspx.cs" Inherits="NewRegister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
    </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <h1><asp:Label ID="Label1" runat="server" Text="New Registention"></asp:Label>
    <br /></h1>
    <table style="width: 50%;">
        <tr>
            <td>
    <asp:Label ID="Label2" runat="server" Text="name"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="name" ErrorMessage="name is not empty"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label3" runat="server" Text="mobile number"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="Mobile_no" runat="server" MaxLength="10" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Mobile_no" ErrorMessage="mobile number required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Mobile_no" ErrorMessage="Enter Valide mobile no"
                    ValidationExpression="[7-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label7" runat="server" Text="Enter Password"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="password" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="password" ErrorMessage="enter a password"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label4" runat="server" Text="address"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="addr" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="addr" ErrorMessage="enter your address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
    <asp:Label ID="Label5" runat="server" Text="gender"></asp:Label>
                </td>
            <td class="style1">
    <asp:RadioButton ID="male" runat="server" Text="male" GroupName="G"/>
    <asp:RadioButton ID="female" runat="server" Text="female" Checked="True" GroupName="G"/>
    <asp:RadioButton ID="other" runat="server" Text="other" GroupName="G"/>
                </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label6" runat="server" Text="age"></asp:Label>
                </td>
            <td>
    <asp:TextBox ID="age" runat="server" MaxLength="2" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="age" ErrorMessage="enter your age"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td colspan="2">
    <asp:Button ID="Register" runat="server" Text="Register" onclick="Button1_Click" 
                    style="height: 26px" />
                </td>
        </tr>
    </table>
    <br />
    </form>
    </center>
</body>
</html>
