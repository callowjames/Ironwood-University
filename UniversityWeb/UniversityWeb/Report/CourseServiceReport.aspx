<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseServiceReport.aspx.cs" Inherits="UniversityWeb.Report.CourseServiceReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Service Report</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnHome" runat="server" onclick="btnHome_Click" Text="Home" />
        <asp:Button ID="btnViewAll" runat="server" onclick="btnViewAll_Click" 
            Text="View All" />
        <br />
        <asp:TextBox ID="txtFilter" runat="server" ToolTip="Enter User ID"></asp:TextBox>
        <asp:Button ID="btnFilter" runat="server" onclick="btnFilter_Click" 
            Text="Filter" />
        <br />
        <asp:Label ID="lblMessages" runat="server" ForeColor="Red"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="true" />
    
    </div>
    </form>
</body>
</html>
