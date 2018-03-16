<%@ Page Title="" Language="C#" MasterPageFile="~/INDEX1.master" AutoEventWireup="true" CodeFile="LOGIN_F.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       
    <link href="css/Style_f.css" rel="stylesheet" />
<body>

    <div class="login-card">
        <h1>Faculty-Login</h1>
        <br />
        <br />
        <br />
        <asp:TextBox ID="T1" runat="server" placeholder="ID" ToolTip="ID"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="t1" runat="server" ErrorMessage="Enter Username" ControlToValidate="T1" Font-Bold="True" Font-Names="Bookman Old Style" Font-Overline="False" Font-Underline="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:TextBox ID="T2" runat="server" placeholder="PASSWORD" ToolTip="Password" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="T2" Font-Bold="True" Font-Names="Bookman Old Style" Font-Underline="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <br />

        <div>
            <asp:Button CssClass="login login-submit" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click1" />

            <div class="login-help">
               <a href="#">Forgot Password</a>
            </div>
        </div>
    </div>
</body>





 
     <!-- Footer -->

        <footer>
            <div class="navbar navbar-default navbar-fixed-bottom">
                <div class="container">

               
                   
                <p class=" navbar-text ">&copy;2017 EWCM.com &middot; <a href="HOME.aspx">Home</a> &middot;</p>
                 </div>
            </div>
        </footer>

        <!-- Footer -->



</asp:Content>

