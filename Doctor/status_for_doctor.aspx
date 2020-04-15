<%@ Page Language="C#" AutoEventWireup="true" CodeFile="status_for_doctor.aspx.cs" Inherits="status_for_doctor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <div>
    
        Online Status<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Srno" HeaderText="Srno" SortExpression="Srno" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                    SortExpression="mobileno" />
                <asp:BoundField DataField="timeToFA" HeaderText="timeToFA" 
                    SortExpression="timeToFA" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:doctorConnectionString %>" 
            SelectCommand="SELECT [Srno], [name], [mobileno], [timeToFA] FROM [appointment]">
        </asp:SqlDataSource>
        <br />
    
    </div>
    </center>
    </form>
</body>
</html>
