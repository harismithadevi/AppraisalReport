<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNested.master" AutoEventWireup="true" CodeBehind="CreateLogin.aspx.cs" Inherits="Appraisal.CreateLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <table align="center" style="width: 100%">
    <tr>
        <td class="auto-style10" colspan="2" style="text-align: center">
                <strong>
                <br />
                <asp:Label ID="Label14" runat="server" CssClass="auto-style15" Text="CREATE NEW EMPLOYEE LOGIN"></asp:Label>
                <br />
                <br />
                </strong>
            </td>
    </tr>
    <tr>
        <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Text="Enter Employee Username : " CssClass="auto-style11" style="font-size: large"></asp:Label>
                        <br />
                        <br />
                    <br />
        </td>
        <td class="auto-style10" style="text-align: left">
                        <asp:TextBox ID="empUname_TextBox" runat="server" Height="35px" Width="300px" style="font-family: metropolis; font-size: large"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="empUname_TextBox" CssClass="auto-style18" style="font-size: large; color: #000000" ForeColor="#784366">*</asp:RequiredFieldValidator>
                        <br />
                        <br />
                        </strong></td>
    </tr>
    <tr>
        <td class="auto-style9">
                        <asp:Label ID="Label5" runat="server" Text="Enter Employee Password :" CssClass="auto-style11" style="font-size: large"></asp:Label>
                        <br />
                        <br />
                    <br />
        </td>
        <td class="auto-style10" style="text-align: left">
                        <asp:TextBox ID="empPass_TextBox" runat="server" Height="35px" Width="300px" TextMode="Password"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ControlToValidate="empPass_TextBox" CssClass="auto-style18" style="font-size: large; color: #000000" ForeColor="#784366">*</asp:RequiredFieldValidator>
                        <br />
                        <br />
                        </strong></td>
    </tr>
    <tr>
        <td class="auto-style6">
                        <asp:Label ID="Label6" runat="server" Text="Enter your Password :" CssClass="auto-style11" style="font-size: large"></asp:Label>
                        <br />
                        <br />
                    <br />
        </td>
        <td style="text-align: left">
                        <asp:TextBox ID="adminPass_TextBox" runat="server" Height="35px" Width="300px" TextMode="Password"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator3" runat="server" ErrorMessage="Admin Password is required" ControlToValidate="adminPass_TextBox" CssClass="auto-style18" style="color: #854B71; font-size: large" ForeColor="#784366">*</asp:RequiredFieldValidator>
                        <br />
                        <br />
                        </strong></td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center"><strong>
                        <asp:Button ID="Cancel_Button2" runat="server" CssClass="Buttons" Text="CANCEL" OnClick="CancelBtn_Click" style="font-size: large; font-family: metropolis; font-weight: bold;" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Submit_Button" runat="server" CssClass="Buttons" Text="SUBMIT" OnClick="SubmitBtn_Click" style="font-weight: bold; font-family: metropolis; font-size: large" />
                        <br />
                        <br />
                        </strong></td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <strong><em><asp:ValidationSummary ID="LoginValidationSummary" runat="server" CssClass="valsummary" DisplayMode="List" ForeColor="#784366" style="color: #854B71" /></em></strong>

        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <br />
            <strong><em>
            <asp:Label ID="logMsg" runat="server" BackColor="#C79CB8" CssClass="auto-style15"></asp:Label>
            </em></strong>
        </td>
    </tr>
</table>

</asp:Content>
