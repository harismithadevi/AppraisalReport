<%@ Page Title="" Language="C#" MasterPageFile="~/MainNested.master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Appraisal.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    
    <p>
        &nbsp;</p>
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" Height="600px" />
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/xml/banner.xml"></asp:XmlDataSource>

</asp:Content>
