<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication7._Default" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rswebTest" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
    <rswebTest:ReportViewer ID="ReportViewer1" runat="server" 
    Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="Report1.rdlc">
            <DataSources>
                <rswebTest:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rswebTest:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        SelectMethod="GetData" 
        TypeName="WebApplication7.DataSet2TableAdapters.DataTable1TableAdapter">
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="GetData" 
    TypeName="WebApplication7.DataSet2TableAdapters.EnrolledTableAdapter">
</asp:ObjectDataSource>
    <rswebTest:ReportViewer id="rs2" runat="server" Font-Names="Verdana" 
    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="Report2.rdlc">
            <DataSources>
                <rswebTest:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rswebTest:ReportViewer>
    </asp:Content>
