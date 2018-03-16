<%@ Page Title="" Language="C#" MasterPageFile="~/INDEX1.master" AutoEventWireup="true" CodeFile="LOGIN_S.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <link href="css/style.css" rel="stylesheet" />
    
<body>

    <div class="login-card">
        <h1>Student-Login</h1>
        <br />
        <br />
        <br />
        <asp:TextBox ID="T1" runat="server" placeholder="REGISTER NUMBER" ToolTip="Register Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="submit" CssClass="t1" runat="server" ErrorMessage="Enter Username" ControlToValidate="T1" Font-Bold="True" Font-Names="Bookman Old Style" Font-Overline="False" Font-Underline="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:TextBox ID="T2" runat="server" placeholder="PASSWORD" ToolTip="Password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="submit" runat="server" ErrorMessage="Enter Password" ControlToValidate="T2" Font-Bold="True" Font-Names="Bookman Old Style" Font-Underline="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />

        <div>
            <asp:Button CssClass="login login-submit" ValidationGroup="submit" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click1" />

            <div class="login-help">
               
                <a href="#" onclick="$('#pwdModal').modal({'backdrop': 'static'});"class="btn">Forget Password</a>
                <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="#060e6a"></asp:Label>
            </div>
        </div>
    </div>


<!--modal-->
<div tabindex="-1" class="modal fade" id="pwdModal" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
          <h1 class="text-center">What's My Password?</h1>
      </div>
      <div class="modal-body">
          <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          
                          <p>If you have forgotten your password you can reset it here.</p>
                            <div class="panel-body">
                                <fieldset>
                                    <div class="form-group">

                                        <asp:TextBox ID="txtUserName" class="form-control input-lg" runat="server" placeholder="UserName"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="b1" runat="server" ForeColor="DarkRed" ErrorMessage="Oops! Empty is not Valid" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                                    </div>
                                    
                                    <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" ValidationGroup="b1" class="btn btn-lg btn-primary btn-block" Text="Send Password Link" />
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
              <asp:Button ID="Button3" CssClass="btn btn-success" Text="Cancel" runat="server" data-dismiss="modal" />
		  </div>	
      </div>
  </div>
  </div>
</div>









</body>


</asp:Content>

