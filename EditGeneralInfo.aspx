<%@ Page Title="" Language="C#" MasterPageFile="~/MainNested.master" AutoEventWireup="true" CodeBehind="EditGeneralInfo.aspx.cs" Inherits="Appraisal.EditGeneralInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <table cellpadding="2" style="width: 100%">
    <tr>
        <td class="auto-style1" style="height: 30px">
                </td>
    </tr>
    <tr>
        <td class="tdcenter">
                <strong>
                <br />
                <asp:Label ID="Label14" runat="server" CssClass="auto-style15" Text="EDIT GENERAL INFO"></asp:Label>
                <br />
                </strong>
            </td>
    </tr>
    <tr>
        <td>
            <br />
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="EmpID" DataSourceID="SqlDataSourceGeneral" Font-Bold="True" HorizontalAlign="Center" OnItemUpdated="FormView1_ItemUpdated" style="font-size: large" Width="70%" BackColor="#E1CEDB" BorderColor="#6F425F" BorderStyle="None">
                    <EditItemTemplate>
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 31px">EmpID: </td>
                                <td style="height: 31px">
                                    <asp:Label ID="EmpIDLabel1" runat="server" Text='<%# Eval("EmpID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Name:
                                    <br />
                                    <br />
                                    DoB:
                                    <br />
                                    <br />
                                    Edu_Qualification:<br />
                                    <br />
                                    <br />
                                    Specialization:<br />
                                    <br />
                                    <br />
                                    Phone:
                                    <br />
                                    <br />
                                    Alternative Phone:<br />
                                    <br />
                                    Email:<br />
                                    <br />
                                    Address:<br /> </td>
                                <td>
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Name is required">*</asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="DoBTextBox" runat="server" Text='<%# Bind("DoB") %>' TextMode="Date" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DoBTextBox" ErrorMessage="DoB is required">*</asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="Edu_QualificationTextBox" runat="server" Text='<%# Bind("Edu_Qualification") %>' TextMode="MultiLine" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Edu_QualificationTextBox" ErrorMessage="Educational Qualification is required">*</asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="SpecializationTextBox" runat="server" Text='<%# Bind("Specialization") %>' TextMode="MultiLine" />
                                    <br />
                                    <br />
                                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' TextMode="Phone" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PhoneTextBox" ErrorMessage="Phone is required">*</asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="PhoneAltTextBox" runat="server" Text='<%# Bind("PhoneAlt") %>' TextMode="Phone" />
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PhoneTextBox" ControlToValidate="PhoneAltTextBox" ErrorMessage="Phone Number must be different" Operator="NotEqual">*</asp:CompareValidator>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' TextMode="MultiLine" />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;|
                                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    <br />
                                    <br />
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" style="font-size: large" />
                                </td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        EmpID:
                        <asp:TextBox ID="EmpIDTextBox" runat="server" Text='<%# Bind("EmpID") %>' />
                        <br />
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        DoB:
                        <asp:TextBox ID="DoBTextBox" runat="server" Text='<%# Bind("DoB") %>' />
                        <br />
                        Edu_Qualification:
                        <asp:TextBox ID="Edu_QualificationTextBox" runat="server" Text='<%# Bind("Edu_Qualification") %>' />
                        <br />
                        Specialization:
                        <asp:TextBox ID="SpecializationTextBox" runat="server" Text='<%# Bind("Specialization") %>' />
                        <br />
                        Phone:
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                        <br />
                        PhoneAlt:
                        <asp:TextBox ID="PhoneAltTextBox" runat="server" Text='<%# Bind("PhoneAlt") %>' />
                        <br />
                        Email:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table align="center" cellpadding="3" style="width: 100%">
                            <tr>
                                <td class="auto-style6">EmpID: </td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="EmpIDLabel" runat="server" Text='<%# Eval("EmpID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Name: </td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">DoB: </td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="DoBLabel" runat="server" Text='<%# Bind("DoB") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Educational Qualification:</td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="Edu_QualificationLabel" runat="server" Text='<%# Bind("Edu_Qualification") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Area of Specialization:</td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="SpecializationLabel" runat="server" Text='<%# Bind("Specialization") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Phone Number: </td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;Alternative Phone Number:</td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="PhoneAltLabel" runat="server" Text='<%# Bind("PhoneAlt") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Email: </td>
                                <td class="tdleft" style="font-weight: normal">
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="height: 35px">Address: </td>
                                <td class="tdleft" style="height: 35px; font-weight: normal">
                                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" ForeColor="#6A3C5A" style="font-size: large" Text="EDIT" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:FormView>
                <br />
            <asp:SqlDataSource ID="SqlDataSourceGeneral" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pcsa107ConnectionString %>" DeleteCommand="DELETE FROM [GeneralInfo] WHERE [EmpID] = @original_EmpID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([DoB] = @original_DoB) OR ([DoB] IS NULL AND @original_DoB IS NULL)) AND (([Edu_Qualification] = @original_Edu_Qualification) OR ([Edu_Qualification] IS NULL AND @original_Edu_Qualification IS NULL)) AND (([Specialization] = @original_Specialization) OR ([Specialization] IS NULL AND @original_Specialization IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([PhoneAlt] = @original_PhoneAlt) OR ([PhoneAlt] IS NULL AND @original_PhoneAlt IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))" InsertCommand="INSERT INTO [GeneralInfo] ([EmpID], [Name], [DoB], [Edu_Qualification], [Specialization], [Phone], [PhoneAlt], [Email], [Address]) VALUES (@EmpID, @Name, @DoB, @Edu_Qualification, @Specialization, @Phone, @PhoneAlt, @Email, @Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [EmpID], [Name], [DoB], [Edu_Qualification], [Specialization], [Phone], [PhoneAlt], [Email], [Address] FROM [GeneralInfo] WHERE ([EmpID] = @EmpID)" UpdateCommand="UPDATE [GeneralInfo] SET [Name] = @Name, [DoB] = @DoB, [Edu_Qualification] = @Edu_Qualification, [Specialization] = @Specialization, [Phone] = @Phone, [PhoneAlt] = @PhoneAlt, [Email] = @Email, [Address] = @Address WHERE [EmpID] = @original_EmpID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([DoB] = @original_DoB) OR ([DoB] IS NULL AND @original_DoB IS NULL)) AND (([Edu_Qualification] = @original_Edu_Qualification) OR ([Edu_Qualification] IS NULL AND @original_Edu_Qualification IS NULL)) AND (([Specialization] = @original_Specialization) OR ([Specialization] IS NULL AND @original_Specialization IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([PhoneAlt] = @original_PhoneAlt) OR ([PhoneAlt] IS NULL AND @original_PhoneAlt IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_EmpID" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_DoB" DbType="Date" />
                    <asp:Parameter Name="original_Edu_Qualification" Type="String" />
                    <asp:Parameter Name="original_Specialization" Type="String" />
                    <asp:Parameter Name="original_Phone" Type="String" />
                    <asp:Parameter Name="original_PhoneAlt" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpID" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="DoB" DbType="Date" />
                    <asp:Parameter Name="Edu_Qualification" Type="String" />
                    <asp:Parameter Name="Specialization" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="PhoneAlt" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="EmpID" SessionField="user" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="DoB" DbType="Date" />
                    <asp:Parameter Name="Edu_Qualification" Type="String" />
                    <asp:Parameter Name="Specialization" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="PhoneAlt" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="original_EmpID" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_DoB" />
                    <asp:Parameter Name="original_Edu_Qualification" Type="String" />
                    <asp:Parameter Name="original_Specialization" Type="String" />
                    <asp:Parameter Name="original_Phone" Type="String" />
                    <asp:Parameter Name="original_PhoneAlt" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
                </td>
    </tr>
    <tr>
        <td></td>
    </tr>
</table>
</asp:Content>
