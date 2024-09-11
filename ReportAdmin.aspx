<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNested.master" AutoEventWireup="true" CodeBehind="ReportAdmin.aspx.cs" Inherits="Appraisal.ReportAdmin" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <table align="center" cellpadding="2" class="auto-style17 tdcenter">
    <tr>
        <td style="height: 30px">
                <strong>
                <br />
                <asp:Label ID="Label14" runat="server" CssClass="auto-style15" Text="GENERATE APPRAISAL REPORT"></asp:Label>
                <br />
                </strong>
            </td>
    </tr>
    <tr>
        <td>
            <br />
            <br />
            -Get report for all Staffs-<br />
            <br />
            <strong>
            <asp:Button ID="reportBtn" runat="server" OnClick="reportBtn_Click" style="font-weight: bold; font-family: metropolis; font-size: large" Text="DOWNLOAD REPORT" Height="70px" Width="350px" />
            <br />
            </strong></td>
    </tr>
    <tr>
        <td>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
        </td>
    </tr>
</table>
</asp:Content>
