<%@ Page Title="" Language="C#" MasterPageFile="~/INDEX1.master" AutoEventWireup="true" CodeFile="LOGIN_A.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link href="css/style1.css" rel="stylesheet" />

<body>

    <div class="login-card">
        <h1>Admin-Login</h1>
        <br />
        <br />
        <br />
        <asp:TextBox ID="T1" runat="server" placeholder="USERNAME" ToolTip="ADMIN ID"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Admin Name" ControlToValidate="T1" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:TextBox ID="T2" runat="server" placeholder="PASSWORD" ToolTip="PASSWORD" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="T2" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <br />
        <asp:Button CssClass="login login-submit" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
    </div>

</body>
 
     <!-- Footer -->

    <footer>
        <div class="navbar navbar-default navbar-fixed-bottom">
            <div class="container">
                <p class=" navbar-text ">&copy;2017 EWCM.com &middot; </p>
            </div>
        </div>
    </footer>

        <!-- Footer -->


</asp:Content>

