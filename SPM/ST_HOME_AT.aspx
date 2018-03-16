<%@ Page Title="" Language="C#" MasterPageFile="~/ST_HOME.master" AutoEventWireup="true" CodeFile="ST_HOME_AT.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link href="css/ST_HOME_AT.css" rel="stylesheet" />
 <asp:Label ID="Label1" runat="server" CssClass="lab1" >
     <hr />
 </asp:Label>

    <div class="container" style="width:100%; height:200px;overflow:scroll">
       
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="3" DataKeyNames="REG_NO" DataSourceID="SqlDataSource1" CellSpacing="1" CssClass="table text-center" BorderStyle="Ridge" GridLines="None" HorizontalAlign="Center" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="REG_NO" HeaderText="REG_NO" ReadOnly="True" SortExpression="REG_NO" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="AI" HeaderText="AI" SortExpression="AI" />
                <asp:BoundField DataField="TOTAL_AI" HeaderText="TOTAL_AI" SortExpression="TOTAL_AI" />
                <asp:BoundField DataField="PERCENTAGE_AI" HeaderText="PERCENTAGE_AI" SortExpression="PERCENTAGE_AI" />
                <asp:BoundField DataField="ADBMS" HeaderText="ADBMS" SortExpression="ADBMS" />
                <asp:BoundField DataField="TOTAL_ADBMS" HeaderText="TOTAL_ADBMS" SortExpression="TOTAL_ADBMS" />
                <asp:BoundField DataField="PERCENTAGE_ADBMS" HeaderText="PERCENTAGE_ADBMS" SortExpression="PERCENTAGE_ADBMS" />
                <asp:BoundField DataField="AWP" HeaderText="AWP" SortExpression="AWP" />
                <asp:BoundField DataField="TOTAL_AWP" HeaderText="TOTAL_AWP" SortExpression="TOTAL_AWP" />
                <asp:BoundField DataField="PERCENTAGE_AWP" HeaderText="PERCENTAGE_AWP" SortExpression="PERCENTAGE_AWP" />
                <asp:BoundField DataField="OPTIONAL" HeaderText="OPTIONAL" SortExpression="OPTIONAL" />
                <asp:BoundField DataField="TOTAL_OPTIONAL" HeaderText="TOTAL_OPTIONAL" SortExpression="TOTAL_OPTIONAL" />
                <asp:BoundField DataField="PERCENTAGE_OPT" HeaderText="PERCENTAGE_OPT" SortExpression="PERCENTAGE_OPT" />
                <asp:BoundField DataField="LAB" HeaderText="LAB" SortExpression="LAB" />
                <asp:BoundField DataField="TOTAL_LAB" HeaderText="TOTAL_LAB" SortExpression="TOTAL_LAB" />
                <asp:BoundField DataField="PERCENTAGE_LAB" HeaderText="PERCENTAGE_LAB" SortExpression="PERCENTAGE_LAB" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" Width="10px" />
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT * FROM [ST_ATT] WHERE ([REG_NO] LIKE '%' + @REG_NO + '%')">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="15UHSAC001" Name="REG_NO" SessionField="Student" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>







</asp:Content>

