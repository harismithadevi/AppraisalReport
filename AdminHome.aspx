<%@ Page Title="Home | Admin" Language="C#" MasterPageFile="~/AdminNested.master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Appraisal.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <p>
        <br />
    </p>
    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" Height="600px" />
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/xml/banner1.xml"></asp:XmlDataSource>

</asp:Content>
