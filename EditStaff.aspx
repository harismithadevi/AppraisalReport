<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNested.master" AutoEventWireup="true" CodeBehind="EditStaff.aspx.cs" Inherits="Appraisal.EditStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <table cellpadding="2" style="width: 100%">
        <tr>
            <td colspan="2">
                <strong>
                <br />
                <asp:Label ID="Label14" runat="server" CssClass="auto-style15" Text="EDIT STAFF DETAILS"></asp:Label>
                <br />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="height: 76px">
                <asp:Label ID="Label2" runat="server" Text="Employee ID :" style="font-size: large"></asp:Label>
                <br />
            </td>
            <td style="height: 76px"> 
                
                <strong>
                <asp:DropDownList ID="ID_TextBox" runat="server" DataSourceID="ID_SqlDataSource" DataTextField="EmpID" DataValueField="EmpID" style="font-size: large; font-family: metropolis; font-weight: bold" Height="70px" Width="300px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="EnterButton" runat="server" BorderColor="#9C5884" BorderStyle="Solid" OnClick="EnterButton_Click" style="font-size: large; font-family: METRopolis; font-weight: bold" Text="ENTER" CssClass="Buttons" />
                <asp:SqlDataSource ID="ID_SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:pcsa107ConnectionString %>" SelectCommand="SELECT [EmpID] FROM [GeneralInfo] WHERE ([EmpID] NOT LIKE '%' + @EmpID + '%') ORDER BY [EmpID]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="admin" Name="EmpID" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </strong>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 57px" class="tdcenter">
                        <strong><em>
                        <asp:Label ID="editMsg" runat="server" BackColor="#B27FA0" style="font-size: large"></asp:Label>
                        <br />
                        </em></strong>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="EmpID" DataSourceID="SqlDataSourceEdit" Font-Bold="True" HorizontalAlign="Center" OnItemUpdated="FormView1_ItemUpdated" style="font-size: large" Width="500px" BackColor="#E1CEDB" BorderColor="#6F425F" BorderStyle="None" OnItemDeleting="FormView1_ItemDeleting" OnItemUpdating="FormView1_ItemUpdating" CellPadding="2" OnItemDeleted="FormView1_ItemDeleted">
                    <EditItemTemplate>
                        <table align="center" cellpadding="2" class="auto-style17">
                            <tr>
                                <td class="auto-style6" style="font-size: large">Name: </td>
                                <td class="tdleft">
                                    <asp:TextBox ID="NameTextBox" runat="server" style="font-size: large; font-family: metropolis" Text='<%# Bind("Name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">EmpID: </td>
                                <td class="tdleft">
                                    <asp:Label ID="EmpIDLabel1" runat="server" style="font-size: large" Text='<%# Eval("EmpID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">Designation: </td>
                                <td class="tdleft">
                                    <asp:TextBox ID="DesignationTextBox" runat="server" style="font-size: large; font-family: metropolis" Text='<%# Bind("Designation") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">Department: </td>
                                <td class="tdleft">
                                    <asp:TextBox ID="DepartmentTextBox" runat="server" style="font-size: large; font-family: metropolis" Text='<%# Bind("Department") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">DoA: </td>
                                <td class="tdleft">
                                    <asp:TextBox ID="DoATextBox" runat="server" style="font-size: large; font-family: metropolis" Text='<%# Bind("DoA") %>' TextMode="Date" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="auto-style8">
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" ForeColor="#623E55" style="font-size: large" Text="Update" />
                                    &nbsp;|&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" ForeColor="#744564" style="font-size: large" Text="Cancel" />
                                </td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        EmpID:
                        <asp:TextBox ID="EmpIDTextBox" runat="server" Text='<%# Bind("EmpID") %>' />
                        <br />
                        Designation:
                        <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                        <br />
                        Department:
                        <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
                        <br />
                        DoA:
                        <asp:TextBox ID="DoATextBox" runat="server" Text='<%# Bind("DoA") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table align="center" cellpadding="2" class="auto-style17">
                            <tr>
                                <td class="auto-style6">Name: </td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">EmpID: </td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="EmpIDLabel" runat="server" Text='<%# Eval("EmpID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Designation: </td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="DesignationLabel" runat="server" Text='<%# Bind("Designation") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Department: </td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Bind("Department") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">DoA: </td>
                                <td class="tdleft" style="font-weight: normal; height: 33px;">
                                    <asp:Label ID="DoALabel" runat="server" Text='<%# Bind("DoA") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" ForeColor="#7B4669" Text="Edit" />
                                    &nbsp;|&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" ForeColor="#7B4669" Text="Delete" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:FormView>
                <br />
            <asp:SqlDataSource ID="SqlDataSourceEdit" runat="server" ConflictDetection="OverwriteChanges" ConnectionString="<%$ ConnectionStrings:pcsa107ConnectionString %>" DeleteCommand="DELETE FROM [GeneralInfo] WHERE [EmpID] = @original_EmpID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([DoA] = @original_DoA) OR ([DoA] IS NULL AND @original_DoA IS NULL))" InsertCommand="INSERT INTO [GeneralInfo] ([Name], [EmpID], [Designation], [Department], [DoA]) VALUES (@Name, @EmpID, @Designation, @Department, @DoA)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Name], [EmpID], [Designation], [Department], [DoA] FROM [GeneralInfo] WHERE ([EmpID] = @EmpID)" UpdateCommand="UPDATE [GeneralInfo] SET [Name] = @Name, [Designation] = @Designation, [Department] = @Department, [DoA] = @DoA WHERE [EmpID] = @original_EmpID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([DoA] = @original_DoA) OR ([DoA] IS NULL AND @original_DoA IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_EmpID" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Designation" Type="String" />
                    <asp:Parameter Name="original_Department" Type="String" />
                    <asp:Parameter Name="original_DoA" DbType="Date" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="EmpID" Type="String" />
                    <asp:Parameter Name="Designation" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="DoA" DbType="Date" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="ID_TextBox" Name="EmpID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Designation" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="DoA" DbType="Date" />
                    <asp:Parameter Name="original_EmpID" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Designation" Type="String" />
                    <asp:Parameter Name="original_Department" Type="String" />
                    <asp:Parameter Name="original_DoA" DbType="Date" />
                </UpdateParameters>
            </asp:SqlDataSource>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
