<%@ Page Title="" Language="C#" MasterPageFile="~/MainNested.master" AutoEventWireup="true" CodeBehind="GeneralInfo.aspx.cs" Inherits="Appraisal.GeneralInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <table align="center" class="auto-style5" cellpadding="10">
        <tr>
            <td class="auto-style14" colspan="2">
                <strong>
                <asp:Label ID="Label14" runat="server" CssClass="auto-style15" Text="EMPLOYEE GENERAL INFO"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" Text="Employee ID :"></asp:Label>
            </td>
            <td class="auto-style8" style="text-align: left"> 
                <asp:TextBox ID="ID_TextBox" runat="server" Height="35px" Width="300px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"> 
                <asp:Label ID="Label3" runat="server" Text="Name :"></asp:Label>
            </td>
            <td class="auto-style12" style="text-align: left">  
                <asp:TextBox ID="Name_TextBox" runat="server" Height="35px" Width="300px"></asp:TextBox>
                <strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name_TextBox" CssClass="auto-style15" ErrorMessage="Name is required">*</asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"> 
                <asp:Label ID="Label4" runat="server" Text="Date of Birth : "></asp:Label>
            </td>
            <td style="text-align: left">   
                <asp:TextBox ID="DOB_TextBox" runat="server" Height="35px" Width="300px" TextMode="Date"></asp:TextBox>
                <strong>&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DOB_TextBox" CssClass="auto-style15" ErrorMessage="RangeValidator">*</asp:RangeValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"> 
                <asp:Label ID="Label5" runat="server" Text="Educational Qualification :"></asp:Label>
                <br />
                <br />
                <br />
            </td>
            <td style="text-align: left">   
                <asp:TextBox ID="Education_TextBox" runat="server" Height="100px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                <strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Education_TextBox" CssClass="auto-style15" ErrorMessage="Qualification is required">*</asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"> 
                <asp:Label ID="Label6" runat="server" Text="Designation : "></asp:Label>
            </td>
            <td style="text-align: left">   
                <asp:TextBox ID="Desg_TextBox" runat="server" Height="35px" Width="300px"></asp:TextBox>
                <strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Desg_TextBox" CssClass="auto-style15" ErrorMessage="Designation is required">*</asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"> 
                <asp:Label ID="Label7" runat="server" Text="Department : "></asp:Label>
            </td>
            <td style="text-align: left"> 
                <asp:DropDownList ID="Dept_DropDownList" runat="server" CssClass="auto-style13" Height="35px" Width="300px">
                    <asp:ListItem Value="0">-- Select Department --</asp:ListItem>
                    <asp:ListItem>Mathematics</asp:ListItem>
                    <asp:ListItem>Physics</asp:ListItem>
                    <asp:ListItem>Chemistry</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Computer Science</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                    <asp:ListItem>Psychology</asp:ListItem>
                    <asp:ListItem>Economics</asp:ListItem>
                    <asp:ListItem>History</asp:ListItem>
                    <asp:ListItem>Sociology</asp:ListItem>
                    <asp:ListItem>Physical Education</asp:ListItem>
                </asp:DropDownList>
                <strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Dept_DropDownList" CssClass="auto-style15" ErrorMessage="Department is required" InitialValue="0">*</asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"> 
                <asp:Label ID="Label8" runat="server" Text="Area of Specialization : "></asp:Label>
            </td>
            <td style="text-align: left">   
                <asp:TextBox ID="Specializtion_TextBox" runat="server" Height="35px" Width="300px"></asp:TextBox>
                <strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Specializtion_TextBox" CssClass="auto-style15" ErrorMessage="Specialization is required">*</asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"> 
                <asp:Label ID="Label9" runat="server" Text="Date of Appointment : "></asp:Label>
            </td>
            <td style="text-align: left">   
                <asp:TextBox ID="AppointedDate_TextBox" runat="server" Height="35px" Width="300px" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"> 
                <asp:Label ID="Label10" runat="server" Text="Phone Number : "></asp:Label>
            </td>
            <td style="text-align: left">   
                <asp:TextBox ID="Phone_TextBox" runat="server" Height="35px" Width="300px"></asp:TextBox>
            &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Phone_TextBox" CssClass="auto-style15" ErrorMessage="Phone Number is required">*</asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"> 
                <asp:Label ID="Label13" runat="server" Text="Alternate Phone Number : "></asp:Label>
            </td>
            <td class="auto-style10" style="text-align: left">   
                <asp:TextBox ID="Phone2_TextBox" runat="server" Height="35px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"> 
                <asp:Label ID="Label11" runat="server" Text="E-mail : "></asp:Label>
            </td>
            <td style="text-align: left">   
                <asp:TextBox ID="Email_TextBox" runat="server" Height="35px" Width="300px"></asp:TextBox>
            &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Email_TextBox" CssClass="auto-style15" ErrorMessage="Email is required">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email_TextBox" CssClass="auto-style15" ErrorMessage="Invalid E-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"> 
                <asp:Label ID="Label12" runat="server" Text="Address : "></asp:Label>
                <br />
                <br />
                <br />
            </td>
            <td style="text-align: left">   
                <asp:TextBox ID="Address_TextBox" runat="server" Height="100px" Width="300px" TextMode="MultiLine"></asp:TextBox>
            &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Address_TextBox" CssClass="auto-style15" ErrorMessage="Address is required">*</asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2"> 
                <asp:Button ID="clear_Button" runat="server" CssClass="auto-style16" ForeColor="White" Text="CLEAR" Height="45px" Width="150px" OnClick="clear_Button_Click" />
                <strong>&nbsp;&nbsp; <asp:Button ID="submit_Button" runat="server" CssClass="auto-style16" ForeColor="White" Text="SUBMIT" Height="45px" Width="150px" OnClick="submit_Button_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2"> 
                <em>
                        <asp:ValidationSummary ID="InfoValidationSummary" runat="server" DisplayMode="List" Height="60px" />
                        </em>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2"> 
                
            </td>
        </tr>
    </table>
</asp:Content>
