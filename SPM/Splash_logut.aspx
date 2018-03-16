<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Splash_logut.aspx.cs" Inherits="Splash_logut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta  http-equiv="refresh" content="5;url=HOME.aspx" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style>
        h1{
            font-size:40px;
            margin-top:10%;
            margin-left:auto;
            margin-right:auto;
        }
        p{
            top:5%;
            font-size:25px;
        }
    </style>
     <script src="js/jquery.min.js"></script>
   
</head>
<body  style="background-color:aquamarine; text-emphasis-color:blue; text-align:center">
    <form id="form1"  runat="server">
        <div>
            
                <h1>Successfully Logged out.</h1>
                <h3> Thank you. </h3>
            
        </div>
        <div style="margin-top:15%">
            <p>You will be Redirected to Home Page in <span id="count"> 5 </span> Seconds</p>
            <script type="text/javascript">
                var timeleft = 5;
                var downtimer = setInterval(function () {
                    timeleft--;
                    document.getElementById("count").textContent = timeleft;
                    if (timeleft <= 0)
                        clearInterval(downtimer);
                }, 1000);
            </script>
        </div>
    </form>
</body>
</html>
