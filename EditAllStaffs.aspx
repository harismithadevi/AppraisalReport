<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNested.master" AutoEventWireup="true" CodeBehind="EditAllStaffs.aspx.cs" Inherits="Appraisal.EditAllStaffs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <table cellpadding="2" style="width: 100%">
        <tr>
            <td>
                <strong>
                <br />
                <asp:Label ID="Label14" runat="server" CssClass="auto-style15" Text="EDIT STAFF DETAILS"></asp:Label>
                <br />
                </strong>
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="EmpID" DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Center" Width="100%">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" SortExpression="EmpID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                                <asp:BoundField DataField="DoA" HeaderText="DoA" SortExpression="DoA" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#985681" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#ECDDE7" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pcsa107ConnectionString %>" DeleteCommand="DELETE FROM [GeneralInfo] WHERE [EmpID] = @original_EmpID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([DoA] = @original_DoA) OR ([DoA] IS NULL AND @original_DoA IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))" InsertCommand="INSERT INTO [GeneralInfo] ([EmpID], [Name], [Designation], [Department], [DoA], [Email]) VALUES (@EmpID, @Name, @Designation, @Department, @DoA, @Email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [EmpID], [Name], [Designation], [Department], [DoA], [Email] FROM [GeneralInfo] ORDER BY [EmpID], [Department]" UpdateCommand="UPDATE [GeneralInfo] SET [Name] = @Name, [Designation] = @Designation, [Department] = @Department, [DoA] = @DoA, [Email] = @Email WHERE [EmpID] = @original_EmpID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([DoA] = @original_DoA) OR ([DoA] IS NULL AND @original_DoA IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_EmpID" Type="String" />
                                <asp:Parameter Name="original_Name" Type="String" />
                                <asp:Parameter Name="original_Designation" Type="String" />
                                <asp:Parameter Name="original_Department" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_DoA" />
                                <asp:Parameter Name="original_Email" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="EmpID" Type="String" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Designation" Type="String" />
                                <asp:Parameter Name="Department" Type="String" />
                                <asp:Parameter DbType="Date" Name="DoA" />
                                <asp:Parameter Name="Email" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Designation" Type="String" />
                                <asp:Parameter Name="Department" Type="String" />
                                <asp:Parameter DbType="Date" Name="DoA" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="original_EmpID" Type="String" />
                                <asp:Parameter Name="original_Name" Type="String" />
                                <asp:Parameter Name="original_Designation" Type="String" />
                                <asp:Parameter Name="original_Department" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_DoA" />
                                <asp:Parameter Name="original_Email" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
            </td>
        </tr>
    </table>

</asp:Content>
