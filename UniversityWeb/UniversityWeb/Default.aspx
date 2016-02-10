<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="UniversityWeb._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 1280px;
            height: 853px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ironwood university</h2>
    <p>
        Select a link from the menu bar above to lookup and manage courses, as well as view a service report.</p>
    <p>
        You can also find <a href=""
            title="Ironwood University">additional information at our public website</a>.
    </p>
    <p>
        <center><img alt="IronwoodUniversity" height="480" width="640" style="padding-right: 8px; padding-top: 8px; padding-bottom: 8px;" src="Images/university-331279047401mXI3.jpg" /></center></p>
</asp:Content>
