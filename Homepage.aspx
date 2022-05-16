<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Gym.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Magnet gym home page</title>
    
    <style type="text/css">
        .auto-style1 {
            width: 116%;
            margin-top: 23px;
            margin-left: 47px;
        }
        .auto-style2 {
            width: 122px;
        }
        .auto-style3 {
            width: 200px;
        }
        .auto-style4 {
            width: 186px;
        }
        .auto-style5 {
            width: 103px;
        }
        .auto-style7 {
            width: 100%;
            height: 353px;
            margin-top: 0px;
            margin-left: 58px;
            margin-bottom: 196px;
        }
        .auto-style10 {
            width: 656px;
            height: 354px;
        }
        .auto-style11 {
            width: 877px;
            height: 354px;
        }
        .auto-style12 {
            height: 226px;
            width: 310px;
        }
        .auto-style13 {
            width: 877px;
            height: 226px;
        }
        .auto-style14 {
            width: 656px;
            height: 226px;
        }
        .auto-style15 {
            height: 23px;
            width: 310px;
        }
        .auto-style16 {
            width: 877px;
            height: 23px;
        }
        .auto-style17 {
            width: 656px;
            height: 23px;
        }
        .auto-style18 {
            height: 354px;
            width: 310px;
        }
        .auto-style19 {
            margin-left: 42px;
        }
        .auto-style20 {
            width: 127px;
        }
        .auto-style21 {
            width: 132px;
        }
    </style>
    
</head>
    <BODY bgcolor="black">
    <MARQUEE direction="left" class="auto-style19">
        <FONT face="ARIAL" color="white" size="+5">
            WELCOME TO MAGNET GYM - IT’S ALL ABOUT WHAT YOU CAN ACHIEVE

        </FONT></MARQUEE>
</BODY>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="hyprclasses" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" NavigateUrl="~/Classes.aspx">Classes</asp:HyperLink>
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="hyprpersonalworkouts" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" NavigateUrl="~/Personal Workouts.aspx">Personal workouts</asp:HyperLink>
                </td>
                <td class="auto-style4">
                    <asp:HyperLink ID="hyprpricesandplans" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" NavigateUrl="~/Pricesandplans.aspx">Prices &amp; Plans</asp:HyperLink>
                </td>
                <td class="auto-style5">
                    <asp:HyperLink ID="hyprsignin" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" NavigateUrl="~/Login.aspx">Sign in</asp:HyperLink>
                </td>
                <td class="auto-style20">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" NavigateUrl="~/Aboutus.aspx">About us</asp:HyperLink>
                </td>
                <td class="auto-style21">
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" ForeColor="White" NavigateUrl="~/Shop.aspx">Shop now</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="hyprsignup" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Medium" ForeColor="White" NavigateUrl="~/Signup.aspx">Sign up</asp:HyperLink>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table class="auto-style7">
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="XX-Large" ForeColor="White" Text="IT’S ALL ABOUT WHAT YOU CAN ACHIEVE"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/Home images/homepage.png" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:HyperLink ID="HyperLink2" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="X-Large" ForeColor="White" NavigateUrl="~/Pricesandplans.aspx">LET&#39;S GET STARTED</asp:HyperLink>
                </td>
                <td class="auto-style14"></td>
            </tr>
        </table>
    </form>
</body>
</html>
