<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gym.Login" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script runat="server">
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection connn = new SqlConnection();
            connn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Gymdb1.mdf;Integrated Security=True";
            string strInsert = String.Format("INSERT INTO Member1 VALUES('{0}','{1}')", txtUsername.Text , txtPassword );

            //Create sql command
            SqlCommand cmdInsert = new SqlCommand(strInsert, connn);

            //Open the database
            connn.Open();

            //Execute sql command
            cmdInsert.ExecuteNonQuery();

            //Close the database
            connn.Close();
            lblMsg.Text = "Welcome to your account!" + txtUsername.Text;

        }
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top: 60px;
            margin-bottom: 40px;
            margin-left: 371px;
        }
        .auto-style5 {
            margin-left: 43px;
            margin-top: 22px;
        }
        .auto-style6 {
            height: 23px;
            width: 10%;
        }
        .auto-style9 {
            width: 10%;
        }
        .auto-style12 {
            height: 23px;
            width: 165px;
        }
        .auto-style13 {
            height: 23px;
            width: 75%;
        }
        .auto-style14 {
            width: 165px;
        }
        .auto-style15 {
            width: 75%;
        }
        .auto-style16 {
            height: 23px;
            width: 23%;
        }
        .auto-style17 {
            width: 23%;
        }
    </style>
</head>
    <BODY bgcolor="black">
<body>
    <form id="form1" runat="server">
        <div class="auto-style5">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="XX-Large" Text="PLEASE LOGIN TO CONTINUE" ForeColor="White"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12"></td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="txttUsername" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Username:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtUsername" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="first character must be a letter!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red" ValidationExpression="^[a-zA-Z][a-zA-Z0-9]{5,11}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="txttPassword" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Password:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnSubmit" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" OnClick="btnSubmit_Click" Text="SUBMIT" />
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
