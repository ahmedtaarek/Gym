<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Gym.Signup" %>
<%@ Import Namespace="System.Data.SqlClient" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script runat="server">
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Gymdb1.mdf;Integrated Security=True";
            string strInsert = String.Format("INSERT INTO Member VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", txtFname.Text , txtlastname.Text , txtusername.Text , txtpasword.Text , rblradiosign.SelectedValue , txtphone.Text , ddlcountrysign.SelectedValue);

            //Create sql command
            SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

            //Open the database
            conn.Open();

            //Execute sql command
            cmdInsert.ExecuteNonQuery();

            //Close the database
            conn.Close();
            lblMsg.Text = "Welcome!" + txtFname.Text + "Your Account has been successfully created";

        }
    </script>
    <appSettings>
  <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
</appSettings>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top: 61px;
            margin-left: 205px;
        }
        .auto-style2 {
            width: 183px;
        }
        .auto-style5 {
            width: 183px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 183px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            margin-left: 47px;
        }
        .auto-style10 {
            width: 308px;
        }
        .auto-style11 {
            height: 26px;
            width: 308px;
        }
        .auto-style13 {
            height: 23px;
            width: 308px;
        }
        .auto-style17 {
            margin-bottom: 0px;
        }
        .auto-style18 {
            width: 183px;
            height: 42px;
        }
        .auto-style19 {
            height: 42px;
            width: 308px;
        }
        .auto-style20 {
            height: 42px;
        }
        .auto-style21 {
            width: 183px;
            height: 41px;
        }
        .auto-style22 {
            width: 308px;
            height: 41px;
        }
        .auto-style23 {
            height: 41px;
        }
        .auto-style30 {
            height: 26px;
            width: 272px;
        }
        .auto-style32 {
            height: 42px;
            width: 272px;
        }
        .auto-style33 {
            width: 272px;
            height: 41px;
        }
        .auto-style34 {
            width: 272px;
        }
        .auto-style35 {
            height: 23px;
            width: 272px;
        }
        .auto-style36 {
            width: 183px;
            height: 24px;
        }
        .auto-style37 {
            height: 24px;
            width: 308px;
        }
        .auto-style39 {
            height: 24px;
            width: 272px;
        }
        .auto-style40 {
            height: 24px;
        }
        .auto-style41 {
            width: 223px;
            height: 26px;
        }
        .auto-style42 {
            width: 223px;
            height: 24px;
        }
        .auto-style43 {
            width: 223px;
            height: 42px;
        }
        .auto-style44 {
            width: 223px;
            height: 41px;
        }
        .auto-style45 {
            width: 223px;
        }
        .auto-style46 {
            width: 223px;
            height: 23px;
        }
    </style>
</head>
    <body bgcolor="black">

    </body>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Names="Franklin Gothic Demi" Font-Size="XX-Large" Height="38px" Text="SIGN UP FOR A WORKOUT" CssClass="auto-style9" ForeColor="White" Width="601px"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="txttFname" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="First name:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox><br />
                    <font face="arial"color="#FF0000"size="-1">Example: Ahmed or only one name</font>
                &nbsp;</td>
                <td class="auto-style41">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style30">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Invalid first name formate!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36">
                    <asp:Label ID="txttLname" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Last name:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style37">
                    <asp:TextBox ID="txtlastname" runat="server" CssClass="auto-style17"></asp:TextBox><br />
                    <font face="arial"color="#FF0000"size="-1">Example: Ahmed or only one name</font>
                &nbsp;</td>
                <td class="auto-style42"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style39">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtlastname" ErrorMessage="Invalid second name formate!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style40">
                </td>
                <td class="auto-style40">
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="txttUsername" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Username:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox><br/>
                    <font face="arial"color="#FF0000"size="-1">first character must be a letter</font>

                </td>
                <td class="auto-style43">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtusername" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style32">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtusername" ErrorMessage="Invalid username formate!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red" ValidationExpression="^[a-zA-Z][a-zA-Z0-9]{5,11}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="txttpassword" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Password:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtpasword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style44">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpasword" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style33">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtpasword" ErrorMessage="Invalid password!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&amp;+=]).*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="Label2" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Text="Confirm password:"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style44">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpasword" ControlToValidate="txtconfirmpass" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td class="auto-style33">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtconfirmpass" ErrorMessage="Invalid password!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&amp;+=]).*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="rblSex" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Sex:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:RadioButtonList ID="rblradiosign" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" RepeatDirection="Horizontal" Width="147px" ForeColor="White">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style43">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rblradiosign" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style32"></td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="txttPhone" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Phone:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style45">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtphone" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style34">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtphone" ErrorMessage="Phone number must be from 10 and not more 12 number!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red" ValidationExpression="^([0-9]{10,12})$"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="ddlCountry" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Country:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:DropDownList ID="ddlcountrysign" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium">
                        <asp:ListItem Selected="True">Egypt</asp:ListItem>
                        <asp:ListItem>England</asp:ListItem>
                        <asp:ListItem>South Africa</asp:ListItem>
                        <asp:ListItem>Morroco</asp:ListItem>
                        <asp:ListItem>Lebanon</asp:ListItem>
                        <asp:ListItem>Portugal</asp:ListItem>
                        <asp:ListItem>Brazil</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Italy</asp:ListItem>
                        <asp:ListItem>United states</asp:ListItem>
                        <asp:ListItem>Palestine</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style45">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlcountrysign" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnsubmit" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" OnClick="btnsubmit_Click" Text="SUBMIT" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/Image/Home images/Gym-Free-Download-PNG.png" Width="224px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblMsg" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Names="Franklin Gothic Demi" Font-Size="XX-Large" Height="38px" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13"></td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style35"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

        </table>
    </form>
</body>
</html>
