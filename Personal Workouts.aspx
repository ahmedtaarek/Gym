<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal Workouts.aspx.cs" Inherits="Gym.Personal_Workouts" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script runat="server">
        protected void btnscheduleworkout_Click(object sender, EventArgs e)
        {
            SqlConnection connnn = new SqlConnection();
            connnn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Gymdb1.mdf;Integrated Security=True";
            string strInsert = String.Format("INSERT INTO Member2 VALUES('{0}','{1}','{2}','{3}','{4}','{5}')", txtAge.Text ,  txttHeight.Text , txttWeight.Text , txttTargetweight.Text , txttContactnumber.Text , rblsex2.SelectedValue);

            //Create sql command
            SqlCommand cmddInsert = new SqlCommand(strInsert, connnn);

            //Open the database
            connnn.Open();

            cmddInsert.ExecuteNonQuery();
            

            //Close the database
            connnn.Close();
            lblMsg2.Text = "IN PROGRESS, we will send you a full workout plan";

        }
    </script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 80px;
            margin-left: 17px;
        }
        .auto-style2 {
            width: 306px;
        }
        .auto-style3 {
            width: 137px;
        }
        .auto-style4 {
            width: 306px;
            height: 25px;
        }
        .auto-style5 {
            width: 137px;
            height: 25px;
        }
        .auto-style6 {
            height: 25px;
        }
        .auto-style7 {
            margin-left: 38px;
        }
        .auto-style8 {
            width: 306px;
            height: 144px;
        }
        .auto-style9 {
            width: 137px;
            height: 144px;
        }
        .auto-style10 {
            height: 144px;
        }
        .auto-style11 {
            width: 306px;
            height: 52px;
        }
        .auto-style12 {
            width: 137px;
            height: 52px;
        }
        .auto-style13 {
            height: 52px;
        }
        .auto-style14 {
            height: 144px;
            width: 183px;
        }
        .auto-style15 {
            width: 183px;
        }
        .auto-style16 {
            height: 25px;
            width: 183px;
        }
        .auto-style17 {
            height: 52px;
            width: 183px;
        }
        .auto-style18 {
            height: 144px;
            width: 195px;
        }
        .auto-style19 {
            width: 195px;
        }
        .auto-style20 {
            height: 25px;
            width: 195px;
        }
        .auto-style21 {
            height: 52px;
            width: 195px;
        }
    </style>
</head>
    <BODY bgcolor="black"></BODY>

        
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="XX-Large" Text="LET'S START YOUR WORKOUT PLAN" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style14"></td>
                <td class="auto-style18"></td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Franklin Gothic Demi" Font-Size="Medium" Text="Please enter the followings:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="txttAge" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Age:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style16"></td>
                <td class="auto-style20"></td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="rblSex" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Sex:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:RadioButtonList ID="rblsex2" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" RepeatDirection="Horizontal" ForeColor="White">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rblsex2" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="txtHeight" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Height:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txttHeight" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttHeight" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="txtWeight" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Weight:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txttWeight" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txttWeight" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="txtTargetweight" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Target weight:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txttTargetweight" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txttTargetweight" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="txtContactnumber" runat="server" Font-Names="Malgun Gothic" Font-Size="Medium" Text="Contact number:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txttContactnumber" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txttContactnumber" ErrorMessage="This is a required field!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txttContactnumber" ErrorMessage="Phone number must be from 10 and not more 12 number!" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="Red" ValidationExpression="^([0-9]{10,12})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="btnscheduleworkout" runat="server" BackColor="Red" CssClass="auto-style7" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Large" ForeColor="White" Text="SCHEDULE WORKOUT" Width="225px" OnClick="btnscheduleworkout_Click" />
                    <br />
                    <asp:Label ID="lblMsg2" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Size="Medium" ForeColor="White"></asp:Label>
                    <br />
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style17"></td>
                <td class="auto-style21"></td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
