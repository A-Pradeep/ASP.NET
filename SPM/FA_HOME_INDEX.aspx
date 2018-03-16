<%@ Page Title="" Language="C#" MasterPageFile="~/FA.master" AutoEventWireup="true" CodeFile="FA_HOME_INDEX.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/wow.min.js"></script>
              <script>
                  new WOW();
              </script>
    <style>
        .Lab{
            font-size:90px;
        }
        .txt{
            text-align:center
        }
    </style>
    <body>
        <div>
            <div>
                <img src="images/welcome_Teachers.jpg" class="img-responsive;"
                    style="display: block; margin-left: auto; margin-right: auto; width: 70%;" />

            </div>

            <div class="animated bounceInUp" data-WOW-delay="01.s" style="max-height: 50%; width: 100%; text-align: center">

                <asp:Label ID="Label3" runat="server" Text="Memo" CssClass="Lab"></asp:Label>
                <br />

                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"
                    Text="Memo Goes Here."
                    ReadOnly="True">
                </asp:TextBox>
            </div>
            <div>
            </div>
        </div>

    </body>
    
</asp:Content>

