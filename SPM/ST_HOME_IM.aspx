<%@ Page Title="" Language="C#" MasterPageFile="~/ST_HOME.master" AutoEventWireup="true" CodeFile="ST_HOME_IM.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <link href="css/st_home.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <body>

        <div class="container">
            <br />
            <asp:GridView runat="server" CssClass="table table-hover table-responsive" AllowPaging="True" AutoGenerateColumns="False" CellPadding="10" CellSpacing="5" DataKeyNames="REG_NO" DataSourceID="SqlDataSource1" HorizontalAlign="Center" RowStyle-HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="REG_NO" HeaderText="REG_NO" ReadOnly="True" SortExpression="REG_NO" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:BoundField DataField="ARTIFICAL INTELLIGENCE" HeaderText="ARTIFICAL INTELLIGENCE" SortExpression="ARTIFICAL INTELLIGENCE" />
                    <asp:BoundField DataField="ADVANCED DATABASE" HeaderText="ADVANCED DATABASE" SortExpression="ADVANCED DATABASE" />
                    <asp:BoundField DataField="WEB PROGRAMMING" HeaderText="WEB PROGRAMMING" SortExpression="WEB PROGRAMMING" />
                    <asp:BoundField DataField="OPTIONAL 1" HeaderText="OPTIONAL 1" SortExpression="OPTIONAL 1" />
                    <asp:BoundField DataField="AWP LAB" HeaderText="AWP LAB" SortExpression="AWP LAB" />
                    <asp:BoundField DataField="ACQUIRED MARKS" HeaderText="ACQUIRED MARKS" SortExpression="ACQUIRED MARKS" />
                    <asp:BoundField DataField="TOTAL MARKS" HeaderText="TOTAL MARKS" SortExpression="TOTAL MARKS" />
                    <asp:BoundField DataField="PERCENTAGE" HeaderText="PERCENTAGE" SortExpression="PERCENTAGE" />
                </Columns>
                <EditRowStyle BackColor="#0066FF" ForeColor="#3399FF" HorizontalAlign="Center" VerticalAlign="Middle" Width="25px" />
                <HeaderStyle BackColor="#66FF33" BorderColor="#6600CC" BorderStyle="Solid" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="#66CCFF" />
                <RowStyle BackColor="#99FFCC" BorderColor="#666633" BorderStyle="Ridge" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [ST_MARKS] WHERE ([REG_NO] = @REG_NO)">
                <SelectParameters>
                    <asp:SessionParameter Name="REG_NO" SessionField="student" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

    </body>
</asp:Content>

