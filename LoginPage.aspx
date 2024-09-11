<%@ Page Title="Login" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Appraisal.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .subbtn {
            font-weight: bold;
            font-family: METRopolis;
            font-size: large;
        }
        .canbtn {
            font-family: METRopolis;
            font-size: large;
        }
        .valsummary {
            font-size: medium;
        }
        .lable1 {
            font-size: large;
        }
        .tablelogin {
            width: 100%;
            background-color: #E3C7DA;
        }
        .logintdleft {
            text-align: right;
        }
        .titlelogin {
            font-size: x-large;
            color: #833F6B;
        }
        .logintd {
            text-align: center;
            height: 106px;
        }
        .reqval {
            font-size: x-large;
        }
    .auto-style17 {
        font-size: xx-large;
        color: #833F6B;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <br />
        <asp:Panel ID="Panel3" runat="server" Width="60%" BorderColor="#9C5884" BorderStyle="Groove">
            <table align="center" cellpadding="10" class="tablelogin" width="60%">
                <tr>
                    <td class="logintd" colspan="2"><strong><em>
                        <br />
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style17" Text="LOGIN" ForeColor="#333333"></asp:Label>
                        <br />
                        </em></strong></td>
                </tr>
                <tr>
                    <td class="logintdleft">
                        <strong>
                        <asp:Label ID="Label2" runat="server" CssClass="label1" ForeColor="#7C4569" style="font-size: x-large" Text="Enter your Username : "></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="uname_TextBox" runat="server" Height="35px" Width="300px" CssClass="canbtn"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="uname_TextBox" CssClass="reqval" ForeColor="#7C4569">*</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="logintdleft">
                        <strong>
                        <asp:Label ID="Label5" runat="server" CssClass="label1" ForeColor="#7C4569" style="font-size: x-large" Text="Enter your Password :"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="pass_TextBox" runat="server" Height="35px" Width="300px" TextMode="Password" CssClass="canbtn"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ControlToValidate="pass_TextBox" CssClass="reqval" ForeColor="#7C4569">*</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2"><strong>
                        <br />
                        <asp:Button ID="Cancel_Button2" runat="server" CssClass="subbtn" Text="CANCEL" OnClick="CancelBtn_Click" BorderColor="#7C4569" BorderStyle="Solid" Height="50px" Width="170px" BackColor="White" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Submit_Button" runat="server" CssClass="subbtn" Text="SUBMIT" OnClick="SubmitBtn_Click" BorderColor="#7C4569" BorderStyle="Solid" Height="50px" Width="170px" BackColor="White" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2"><em>
                        <strong>
                        <asp:ValidationSummary ID="LoginValidationSummary" runat="server" CssClass="lable1" DisplayMode="List" ForeColor="#7C4569" />
                        </strong>
                        </em>
                        <br />
                        <strong><em>
                        <asp:Label ID="logMsg" runat="server"></asp:Label>
                        </em></strong></td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
