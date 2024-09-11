<%@ Page Title="" Language="C#" MasterPageFile="~/MainNested.master" AutoEventWireup="true" CodeBehind="EditAchievements.aspx.cs" Inherits="Appraisal.EditAchievements" %>
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
                <asp:Label ID="Label14" runat="server" CssClass="auto-style15" Text="EDIT ACHIEVEMENTS"></asp:Label>
                <br />
                </strong>
            </td>
    </tr>
    <tr>
        <td>
            <br />
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="EmpID" DataSourceID="SqlDataSrcAchievements" Font-Bold="True" HorizontalAlign="Center" OnItemUpdated="FormView1_ItemUpdated" style="font-size: large" Width="70%" BackColor="#E1CEDB" BorderColor="#6F425F" BorderStyle="None">
                    <EditItemTemplate>
                        <table align="center" cellpadding="2" style="width: 100%">
                            <tr>
                                <td>EmpID: </td>
                                <td>
                                    <asp:Label ID="EmpIDLabel1" runat="server" Text='<%# Eval("EmpID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Experience: </td>
                                <td>
                                    <asp:TextBox ID="ExperienceTextBox" runat="server" Text='<%# Bind("Experience") %>' TextMode="MultiLine" />
                                </td>
                            </tr>
                            <tr>
                                <td>Research: </td>
                                <td>
                                    <asp:TextBox ID="ResearchTextBox" runat="server" Text='<%# Bind("Research") %>' TextMode="MultiLine" />
                                </td>
                            </tr>
                            <tr>
                                <td>Book_Chapters:</td>
                                <td>
                                    <asp:TextBox ID="Book_ChaptersTextBox" runat="server" Text='<%# Bind("Book_Chapters") %>' TextMode="MultiLine" />
                                </td>
                            </tr>
                            <tr>
                                <td>Paper_Presented:</td>
                                <td>
                                    <asp:TextBox ID="Paper_PresentedTextBox" runat="server" Text='<%# Bind("Paper_Presented") %>' TextMode="MultiLine" />
                                </td>
                            </tr>
                            <tr>
                                <td>Conference/Seminars/Webinars: </td>
                                <td>
                                    <asp:TextBox ID="ConferenceTextBox" runat="server" Text='<%# Bind("Conference") %>' TextMode="MultiLine" />
                                </td>
                            </tr>
                            <tr>
                                <td>Publications: </td>
                                <td>
                                    <asp:TextBox ID="PublicationsTextBox" runat="server" Text='<%# Bind("Publications") %>' TextMode="MultiLine" />
                                </td>
                            </tr>
                            <tr>
                                <td>Projects: </td>
                                <td>
                                    <asp:TextBox ID="ProjectsTextBox" runat="server" Text='<%# Bind("Projects") %>' TextMode="MultiLine" />
                                </td>
                            </tr>
                            <tr>
                                <td>Awards: </td>
                                <td>
                                    <asp:TextBox ID="AwardsTextBox" runat="server" Text='<%# Bind("Awards") %>' TextMode="MultiLine" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" ForeColor="#7D4D6D" Text="Update" />
                                    &nbsp;|
                                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" ForeColor="#824F71" Text="Cancel" />
                                </td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        EmpID:
                        <asp:TextBox ID="EmpIDTextBox" runat="server" Text='<%# Bind("EmpID") %>' />
                        <br />
                        Experience:
                        <asp:TextBox ID="ExperienceTextBox" runat="server" Text='<%# Bind("Experience") %>' />
                        <br />
                        Research:
                        <asp:TextBox ID="ResearchTextBox" runat="server" Text='<%# Bind("Research") %>' />
                        <br />
                        Book_Chapters:
                        <asp:TextBox ID="Book_ChaptersTextBox" runat="server" Text='<%# Bind("Book_Chapters") %>' />
                        <br />
                        Paper_Presented:
                        <asp:TextBox ID="Paper_PresentedTextBox" runat="server" Text='<%# Bind("Paper_Presented") %>' />
                        <br />
                        Conference:
                        <asp:TextBox ID="ConferenceTextBox" runat="server" Text='<%# Bind("Conference") %>' />
                        <br />
                        Publications:
                        <asp:TextBox ID="PublicationsTextBox" runat="server" Text='<%# Bind("Publications") %>' />
                        <br />
                        Projects:
                        <asp:TextBox ID="ProjectsTextBox" runat="server" Text='<%# Bind("Projects") %>' />
                        <br />
                        Awards:
                        <asp:TextBox ID="AwardsTextBox" runat="server" Text='<%# Bind("Awards") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table align="center" cellpadding="2" style="width: 100%">
                            <tr>
                                <td class="auto-style6" style="font-size: large">EmpID: </td>
                                <td class="tdleft">
                                    <asp:Label ID="EmpIDLabel" runat="server" style="font-size: large" Text='<%# Eval("EmpID") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">Experience: </td>
                                <td class="tdleft"><span style="font-weight: normal">
                                    <asp:Label ID="ExperienceLabel" runat="server" Text='<%# Bind("Experience") %>' />
                                    </span></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">Research: </td>
                                <td class="tdleft"><span style="font-weight: normal">
                                    <asp:Label ID="ResearchLabel" runat="server" Text='<%# Bind("Research") %>' />
                                    </span></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">Book_Chapters: </td>
                                <td class="tdleft"><span style="font-weight: normal">
                                    <asp:Label ID="Book_ChaptersLabel" runat="server" Text='<%# Bind("Book_Chapters") %>' />
                                    </span></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">Paper_Presented: </td>
                                <td class="tdleft"><span style="font-weight: normal">
                                    <asp:Label ID="Paper_PresentedLabel" runat="server" Text='<%# Bind("Paper_Presented") %>' />
                                    </span></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">Conference: </td>
                                <td class="tdleft"><span style="font-weight: normal">
                                    <asp:Label ID="ConferenceLabel" runat="server" Text='<%# Bind("Conference") %>' />
                                    </span></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">Publications: </td>
                                <td class="tdleft"><span style="font-weight: normal">
                                    <asp:Label ID="PublicationsLabel" runat="server" Text='<%# Bind("Publications") %>' />
                                    </span></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">Projects: </td>
                                <td class="tdleft"><span style="font-weight: normal">
                                    <asp:Label ID="ProjectsLabel" runat="server" Text='<%# Bind("Projects") %>' />
                                    </span></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="font-size: large">Awards: </td>
                                <td class="tdleft"><span style="font-weight: normal">
                                    <asp:Label ID="AwardsLabel" runat="server" Text='<%# Bind("Awards") %>' />
                                    </span></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" ForeColor="#714060" Text="EDIT" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:FormView>
                <br />
            <asp:SqlDataSource ID="SqlDataSrcAchievements" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pcsa107ConnectionString %>" DeleteCommand="DELETE FROM [Achievements] WHERE [EmpID] = @original_EmpID AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Research] = @original_Research) OR ([Research] IS NULL AND @original_Research IS NULL)) AND (([Book_Chapters] = @original_Book_Chapters) OR ([Book_Chapters] IS NULL AND @original_Book_Chapters IS NULL)) AND (([Paper_Presented] = @original_Paper_Presented) OR ([Paper_Presented] IS NULL AND @original_Paper_Presented IS NULL)) AND (([Conference] = @original_Conference) OR ([Conference] IS NULL AND @original_Conference IS NULL)) AND (([Publications] = @original_Publications) OR ([Publications] IS NULL AND @original_Publications IS NULL)) AND (([Projects] = @original_Projects) OR ([Projects] IS NULL AND @original_Projects IS NULL)) AND (([Awards] = @original_Awards) OR ([Awards] IS NULL AND @original_Awards IS NULL))" InsertCommand="INSERT INTO [Achievements] ([EmpID], [Experience], [Research], [Book_Chapters], [Paper_Presented], [Conference], [Publications], [Projects], [Awards]) VALUES (@EmpID, @Experience, @Research, @Book_Chapters, @Paper_Presented, @Conference, @Publications, @Projects, @Awards)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Achievements] WHERE ([EmpID] = @EmpID)" UpdateCommand="UPDATE [Achievements] SET [Experience] = @Experience, [Research] = @Research, [Book_Chapters] = @Book_Chapters, [Paper_Presented] = @Paper_Presented, [Conference] = @Conference, [Publications] = @Publications, [Projects] = @Projects, [Awards] = @Awards WHERE [EmpID] = @original_EmpID AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Research] = @original_Research) OR ([Research] IS NULL AND @original_Research IS NULL)) AND (([Book_Chapters] = @original_Book_Chapters) OR ([Book_Chapters] IS NULL AND @original_Book_Chapters IS NULL)) AND (([Paper_Presented] = @original_Paper_Presented) OR ([Paper_Presented] IS NULL AND @original_Paper_Presented IS NULL)) AND (([Conference] = @original_Conference) OR ([Conference] IS NULL AND @original_Conference IS NULL)) AND (([Publications] = @original_Publications) OR ([Publications] IS NULL AND @original_Publications IS NULL)) AND (([Projects] = @original_Projects) OR ([Projects] IS NULL AND @original_Projects IS NULL)) AND (([Awards] = @original_Awards) OR ([Awards] IS NULL AND @original_Awards IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_EmpID" Type="String" />
                    <asp:Parameter Name="original_Experience" Type="String" />
                    <asp:Parameter Name="original_Research" Type="String" />
                    <asp:Parameter Name="original_Book_Chapters" Type="String" />
                    <asp:Parameter Name="original_Paper_Presented" Type="String" />
                    <asp:Parameter Name="original_Conference" Type="String" />
                    <asp:Parameter Name="original_Publications" Type="String" />
                    <asp:Parameter Name="original_Projects" Type="String" />
                    <asp:Parameter Name="original_Awards" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpID" Type="String" />
                    <asp:Parameter Name="Experience" Type="String" />
                    <asp:Parameter Name="Research" Type="String" />
                    <asp:Parameter Name="Book_Chapters" Type="String" />
                    <asp:Parameter Name="Paper_Presented" Type="String" />
                    <asp:Parameter Name="Conference" Type="String" />
                    <asp:Parameter Name="Publications" Type="String" />
                    <asp:Parameter Name="Projects" Type="String" />
                    <asp:Parameter Name="Awards" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="EmpID" SessionField="user" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Experience" Type="String" />
                    <asp:Parameter Name="Research" Type="String" />
                    <asp:Parameter Name="Book_Chapters" Type="String" />
                    <asp:Parameter Name="Paper_Presented" Type="String" />
                    <asp:Parameter Name="Conference" Type="String" />
                    <asp:Parameter Name="Publications" Type="String" />
                    <asp:Parameter Name="Projects" Type="String" />
                    <asp:Parameter Name="Awards" Type="String" />
                    <asp:Parameter Name="original_EmpID" Type="String" />
                    <asp:Parameter Name="original_Experience" Type="String" />
                    <asp:Parameter Name="original_Research" Type="String" />
                    <asp:Parameter Name="original_Book_Chapters" Type="String" />
                    <asp:Parameter Name="original_Paper_Presented" Type="String" />
                    <asp:Parameter Name="original_Conference" Type="String" />
                    <asp:Parameter Name="original_Publications" Type="String" />
                    <asp:Parameter Name="original_Projects" Type="String" />
                    <asp:Parameter Name="original_Awards" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
                </td>
    </tr>
    <tr>
        <td></td>
    </tr>
</table>
</asp:Content>
