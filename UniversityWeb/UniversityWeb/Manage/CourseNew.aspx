<%@ Page Title="New Course" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="CourseNew.aspx.cs" Inherits="UniversityWeb.Manage.CourseNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>
            New Course</h2>
        </br> <strong>Insert a new course:</strong>
        <table>
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="txtNewName" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Title:
                </td>
                <td>
                    <asp:TextBox ID="txtNewTitle" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Credits:
                </td>
                <td>
                    <asp:TextBox ID="txtNewCredits" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Department:
                </td>
                <td>
                    <asp:TextBox ID="txtNewDepartment" runat="server" Width="256px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go Back" />
        <br />
        <asp:Label ID="lblMessages" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>
