<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchasing.aspx.cs" Inherits="Gym.Purchasing" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script runat="server">
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connpurch = new SqlConnection();
            connpurch.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Gymdb1.mdf;Integrated Security=True";
            string strInsert = String.Format("INSERT INTO Purchasing VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", txtemailorphone.Text , txtfnamee.Text , txtlnamee.Text , txtaddress.Text , txtcityy.Text , ddlcountryregion.SelectedValue , ddlstate.SelectedValue , txtzip.Text , txtphonee.Text );

            //Create sql command
            SqlCommand cmdInsert = new SqlCommand(strInsert, connpurch);

            //Open the database
            connpurch.Open();

            //Execute sql command
            cmdInsert.ExecuteNonQuery();

            //Close the database
            connpurch.Close();

            lblMsg3.Text = "You have purchased this item successfully, We will contact you soon!" + txtfnamee.Text;

        }
    </script>
    <style type="text/css">
        .auto-style1 {
            margin-left: 27px;
            margin-top: 22px;
        }
        .auto-style2 {
            width: 100%;
            margin-left: 236px;
            margin-top: 121px;
        }
        .auto-style3 {
            width: 317px;
        }
        .auto-style4 {
            width: 317px;
            height: 51px;
        }
        .auto-style5 {
            height: 51px;
            width: 580px;
        }
        .auto-style6 {
            width: 580px;
        }
        .auto-style9 {
            margin-left: 4px;
            margin-top: 0px;
        }
        .auto-style10 {
            width: 317px;
            height: 3px;
        }
        .auto-style12 {
            width: 580px;
            height: 3px;
        }
        .auto-style13 {
            width: 346px;
        }
        .auto-style14 {
            width: 346px;
            height: 51px;
        }
        .auto-style15 {
            width: 346px;
            height: 3px;
        }
    </style>

    <BODY bgcolor="black"></BODY>
</head>
    <body>
        <form id="form1" runat="server">
            <div class="auto-style1">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="XX-Large" ForeColor="White" Text="CONTACT INFORMATIONS"></asp:Label>
                <br />
        </div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" BorderColor="Red" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtemailorphone" runat="server" CssClass="auto-style9" OnTextChanged="txtemailorphone_TextChanged" Width="291px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailorphone" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailorphone" ErrorMessage="Invalid Email formate!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="Shipping address:"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Text="First name:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="Label6" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Text="Last name:"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtfnamee" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfnamee" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtlnamee" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlnamee" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Text="Address:"></asp:Label>
&nbsp;<asp:Label ID="Label8" runat="server" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="White" Text="(apartment,suite,etc)"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtaddress" runat="server" Width="347px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label9" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Text="City:"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtcityy" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcityy" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label10" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Text="Country/region:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="Label11" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Text="State:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label12" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Text="ZIP code:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlcountryregion" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium">
                            <asp:ListItem Selected="True">Egypt</asp:ListItem>
                            <asp:ListItem>United states</asp:ListItem>
                            <asp:ListItem>Lebanon</asp:ListItem>
                            <asp:ListItem>South Africa</asp:ListItem>
                            <asp:ListItem>Palestine</asp:ListItem>
                            <asp:ListItem>Morroco</asp:ListItem>
                            <asp:ListItem>Spain</asp:ListItem>
                            <asp:ListItem>Argentina</asp:ListItem>
                            <asp:ListItem>Sudan</asp:ListItem>
                            <asp:ListItem>Italy</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="ddlstate" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium">
                            <asp:ListItem Selected="True">Cairo</asp:ListItem>
                            <asp:ListItem>vienna</asp:ListItem>
                            <asp:ListItem>Barcelona</asp:ListItem>
                            <asp:ListItem>Madrid</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtzip" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlcountryregion" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlstate" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtzip" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Large" ForeColor="White" Text="Phone:"></asp:Label>
&nbsp;<asp:Label ID="Label14" runat="server" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="White" Text="(Optional)"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtphonee" runat="server" Width="135px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtphonee" ErrorMessage="Phone number must be from 10 and not more 12 number!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red" ValidationExpression="^([0-9]{10,12})$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="FINISH" />
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblMsg3" runat="server" Font-Names="Franklin Gothic Demi" Font-Size="Medium" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
    </form>
</body>
</html>
