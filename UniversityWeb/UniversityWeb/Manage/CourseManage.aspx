<%@ Page Title="Manage Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseManage.aspx.cs" Inherits="UniversityWeb.Manage.CourseManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2>Manage Courses</h2>
    <p>
        <strong>Select a course to manage:</strong><br />
        <asp:DropDownList ID="ddlExistingCourses" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button2" runat="server" Text="New" onclick="Button2_Click" />
        <asp:Button ID="btnEdit" runat="server" Text="Edit" onclick="btnEdit_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" 
            onclick="btnDelete_Click" />
        <br />
        <asp:Label ID="lblMessages" runat="server" ForeColor="Red"></asp:Label>
        </p>
            <asp:Panel ID="pnlManage" runat="server" Height="183px">
            <strong>Manage:</strong>
            <table>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtManageName" runat="server" Width="256px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Title:
                    </td>
                    <td>
                        <asp:TextBox ID="txtManageTitle" runat="server" Width="256px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Credits:
                    </td>
                    <td>
                        <asp:TextBox ID="txtManageCredits" runat="server" Width="256px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Department:
                    </td>
                    <td>
                        <asp:TextBox ID="txtManageDepartment" runat="server" Width="256px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnUpdate" runat="server" Text="Update" 
            onclick="btnUpdate_Click" />
        </asp:Panel>
    </div>
</asp:Content>
