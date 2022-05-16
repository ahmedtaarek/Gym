<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="Gym.Shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 48px;
            margin-top: 9px;
        }
        .auto-style2 {
            height: 223px;
        }
        .auto-style3 {
            height: 55px;
        }
        .auto-style4 {
            width: 642px;
        }
        .auto-style5 {
            height: 223px;
            width: 642px;
        }
        .auto-style6 {
            height: 55px;
            width: 642px;
        }
        .auto-style9 {
            width: 642px;
            height: 57px;
        }
        .auto-style10 {
            height: 57px;
        }
        .auto-style13 {
            width: 642px;
            height: 127px;
        }
        .auto-style14 {
            height: 127px;
        }
        .auto-style15 {
            width: 642px;
            height: 26px;
        }
        .auto-style16 {
            height: 26px;
        }
        .auto-style17 {
            margin-top: 0px;
        }
        .auto-style18 {
            margin-left: 9px;
        }
    </style>
</head>
    <BODY bgcolor="black">
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="XX-Large" ForeColor="White" Text="SHOP NOW"></asp:Label>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Image ID="Image1" runat="server" Height="206px" ImageUrl="~/Image/Home images/dumble.png" Width="235px" CssClass="auto-style18" />
                </td>
                <td class="auto-style2">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/Home images/Black fitness equipment.png" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="Dumble"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="30$"></asp:Label>
&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:HyperLink ID="purchase1" runat="server" BackColor="Red" BorderStyle="Inset" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" NavigateUrl="~/Purchasing.aspx">PURCHASE</asp:HyperLink>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="Black fitness equipment"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="120$"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;<br />
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="purchase2" runat="server" BackColor="Red" BorderStyle="Inset" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" NavigateUrl="~/Purchasing.aspx">PURCHASE</asp:HyperLink>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Home images/workout machine.png" Width="200px" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="Workout machine"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="200$"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="purchase3" runat="server" BackColor="Red" BorderStyle="Inset" CssClass="auto-style17" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" NavigateUrl="~/Purchasing.aspx">PURCHASE</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Image/Home images/gym machine bysicle.png" Width="300px" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="Workout machine"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="300$"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="purchase4" runat="server" BackColor="Red" BorderStyle="Inset" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" NavigateUrl="~/Purchasing.aspx">PURCHASE</asp:HyperLink>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
