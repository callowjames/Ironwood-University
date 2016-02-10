<%@ Page Title="Lookup Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseLookup.aspx.cs" Inherits="UniversityWeb.Lookup.CourseLookup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <asp:ObjectDataSource ID="CourseObjectDataSource" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="UniversityLibrary.UniversityDataSetTableAdapters.UniversityCourseTableAdapter">
        </asp:ObjectDataSource>

        <h2>
        Lookup Courses</h2>

        <p>
        <strong>Select a course:</strong></br>
    <asp:DropDownList ID="ddlCourse" runat="server" AppendDataBoundItems="True" 
        AutoPostBack="True" DataSourceID="CourseObjectDataSource" 
        DataTextField="CourseFullTitle" DataValueField="CourseID">
    </asp:DropDownList>
    &nbsp;<asp:Button ID="btnManage" runat="server" onclick="btnManage_Click" 
        Text="Manage Courses" />
    &nbsp;<asp:Button ID="btnReport" runat="server" onclick="btnReport_Click" 
        Text="View Report" />
        </p>

    <p>
    <asp:ObjectDataSource ID="SectionObjectDataSource" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="UniversityLibrary.UniversityDataSetTableAdapters.UniversitySectionTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCourse" DefaultValue="" Name="Param1" 
                PropertyName="SelectedValue" Type="Int64" />
        </SelectParameters>
    </asp:ObjectDataSource>

    <strong>Select a section/instructor:</strong><br />
    <asp:ListBox ID="lbSection" runat="server" AutoPostBack="True" 
        DataSourceID="SectionObjectDataSource" DataTextField="SectionFull" 
        DataValueField="SectionID"></asp:ListBox>
        </p>
        <p>
    <asp:ObjectDataSource ID="StudentObjectDataSource" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="UniversityLibrary.UniversityDataSetTableAdapters.UniversityStudentTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbSection" Name="Param2" 
                PropertyName="SelectedValue" Type="Int64" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="gvStudent" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="StudentID" DataSourceID="StudentObjectDataSource" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="StudentFullName" HeaderText="Full Name" 
                ReadOnly="True" SortExpression="StudentFullName" />
            <asp:BoundField DataField="StudentDOB" HeaderText="DOB" 
                SortExpression="StudentDOB" DataFormatString="{0:d}" />
            <asp:BoundField DataField="StudentGender" HeaderText="Gender" 
                SortExpression="StudentGender" />
            <asp:BoundField DataField="StudentAddress" HeaderText="Street Address" 
                SortExpression="StudentAddress" />
            <asp:BoundField DataField="StudentCity" HeaderText="City" 
                SortExpression="StudentCity" />
            <asp:BoundField DataField="StateAbbreviation" HeaderText="State" 
                SortExpression="StateAbbreviation" />
            <asp:BoundField DataField="StudentPostalCode" HeaderText="Postal Code" 
                SortExpression="StudentPostalCode" />
            <asp:BoundField DataField="StudentPhoneNumber" HeaderText="Phone Number" 
                SortExpression="StudentPhoneNumber" />
            <asp:BoundField DataField="StudentUserID" HeaderText="User ID" 
                SortExpression="StudentUserID" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </p>
    <br />
    <br />

</asp:Content>
