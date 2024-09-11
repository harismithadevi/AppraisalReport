<%@ Page Title="" Language="C#" MasterPageFile="~/MainNested.master" AutoEventWireup="true" CodeBehind="AppraisalReport.aspx.cs" Inherits="Appraisal.AppraisalReport" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <table align="center" cellpadding="2" style="width: 100%" class="tdcenter">
    <tr>
        <td colspan="2" style="height: 42px">
                <strong>
                <br />
                <asp:Label ID="Label14" runat="server" CssClass="auto-style15" Text="GENERATE APPRAISAL REPORT"></asp:Label>
                <br />
                </strong>
            </td>
    </tr>
    <tr>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td colspan="2"><strong>
            <br />
            <asp:Button ID="reportBtn" runat="server" OnClick="reportBtn_Click" style="font-weight: bold; font-family: metropolis; font-size: large" Text="DOWNLOAD REPORT" Height="70px" Width="350px" />
            <br />
            <br />
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            </strong></td>
    </tr>
</table>

</asp:Content>
