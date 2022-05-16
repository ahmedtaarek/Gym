<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="Gym.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 28px;
            margin-bottom: 10px;
        }
        .auto-style2 {
            width: 489px;
            height: 177px;
        }
        .auto-style3 {
            margin-left: 20px;
            margin-top: 31px;
        }
        .auto-style4 {
            width: 100%;
            margin-left: 21px;
            margin-bottom: 16px;
        }
        .auto-style5 {
            height: 177px;
        }
        .auto-style6 {
            height: 42px;
        }
        .auto-style23 {
            margin-left: 20px;
            margin-top: 31px;
            height: 41px;
            width: 172px;
        }
        .auto-style24 {
            width: 17%;
            margin-left: 21px;
            margin-bottom: 16px;
            height: 41px;
        }
        .auto-style25 {
            height: 41px;
        }
        .auto-style26 {
            width: 73px;
            height: 41px;
        }
        .auto-style27 {
            width: 79px;
            height: 41px;
        }
        .auto-style28 {
            width: 85px;
            height: 41px;
        }
        .auto-style29 {
            width: 69px;
            height: 41px;
        }
    </style>
</head>
    <BODY bgcolor="black"></BODY>

<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="XX-Large" Text="ABOUT MAGNET GYM" ForeColor="White"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style26">
                    <asp:HyperLink ID="hyprclasses" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" NavigateUrl="~/Classes.aspx">Classes</asp:HyperLink>
                </td>
                <td class="auto-style23">
                    <asp:HyperLink ID="hyprpersonalworkouts" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" NavigateUrl="~/Personal Workouts.aspx">Personal workouts</asp:HyperLink>
                </td>
                <td class="auto-style24">
                    <asp:HyperLink ID="hyprpricesandplans" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" NavigateUrl="~/Pricesandplans.aspx">Prices &amp; Plans</asp:HyperLink>
                </td>
                <td class="auto-style29">
                    <asp:HyperLink ID="hyprsignin" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" NavigateUrl="~/Login.aspx">Sign in</asp:HyperLink>
                </td>
                <td class="auto-style28">
                    <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" NavigateUrl="~/Aboutus.aspx">About us</asp:HyperLink>
                </td>
                <td class="auto-style27">
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" ForeColor="White" NavigateUrl="~/Shop.aspx">Shop now</asp:HyperLink>
                </td>
                <td class="auto-style25">
                    <asp:HyperLink ID="hyprsignup" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Medium" ForeColor="White" NavigateUrl="~/Signup.aspx">Sign up</asp:HyperLink>
                </td>
            </tr>
        </table>
        <table class="auto-style4">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="
We’re not here to carry you to fitness, we’re here to motivate you to carry yourself to your goals. 

If you’re not sure what your goals are, or don’t know where to start on your fitness journey, come in and speak to one of our qualified trainers who can help you develop a plan." ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Malgun Gothic" ForeColor="White" NavigateUrl="~/Signup.aspx">Let&#39;s create an account</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
