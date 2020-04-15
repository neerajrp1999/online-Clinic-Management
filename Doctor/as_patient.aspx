<%@ Page Language="C#" AutoEventWireup="true" CodeFile="as_patient.aspx.cs" Inherits="as_patient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body><center>
    <form id="form1" runat="server">
    <asp:Button ID="Button3" runat="server" Text="fix appointment" 
        onclick="Button3_Click" />
                <br/>
    <a href="status_for_patient.aspx">online status</a><br />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        Text="Delete appointment" />
    <br/>
    </form></center>
</body>
</html>
