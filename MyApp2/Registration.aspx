<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MyApp2.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My registration</title>
    <script type="text/javascript">
        function validate() {


            var str = document.getElementById('<%=tb_password.ClientID %>').value;
            //pwd//
            if (str.length < 8) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password Length Must Be at Least 8 Characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("too_short");
            }
            else if (str.search(/[0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 number";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_number");
            }
            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 lowercase";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_lowercase");
            }
            else if (str.search(/[A-Z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 uppercase";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_uppercase");
            }
            else if (str.search(/[\W]{1,}/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 special character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_special");
            }

            document.getElementById("lbl_pwdchecker").innerHTML = "Excellent!";
            document.getElementById("lbl_pwdchecker").style.color = "Blue";

        }


        function cfmpwdValidation() {
            var str1 = document.getElementById('<%=tb_password.ClientID %>').value;
            var str2 = document.getElementById('<%=tb_cfmpassword.ClientID %>').value;

            if (str1 == str2) {
                document.getElementById("lbl_cfmpwdchecker").innerHTML = "OK";
                document.getElementById("lbl_cfmpwdchecker").style.color = "Blue";
                return true;
            }
            else {
                document.getElementById("lbl_cfmpwdchecker").innerHTML = "Password does not match!";
                document.getElementById("lbl_cfmpwdchecker").style.color = "Red";
                return false;
            }

        }

    </script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 121px;
        }
        .auto-style3 {
            margin-bottom: 0px;
        }
        .auto-style4 {
            width: 121px;
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;Account
            Registration<table class="auto-style1">
                <tr>
                    <td class="auto-style2">First Name:</td>
                    <td>
            <asp:TextBox ID="tb_fname" runat="server" Witdh="200px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorFName" runat="server" ControlToValidate="tb_fname" Display="Dynamic" ErrorMessage="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Last Name:</td>
                    <td>
            <asp:TextBox ID="tb_lname" runat="server" Witdh="200px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLName" runat="server" ControlToValidate="tb_lname" Display="Dynamic" ErrorMessage="Last Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Credit Card Info:</td>
                    <td>
            <asp:TextBox ID="tb_card" runat="server" Witdh="200px"  ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCardNum" runat="server" ControlToValidate="tb_card" Display="Dynamic" ErrorMessage="Card Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;CVV<asp:TextBox ID="tb_cardCVV" runat="server" Witdh="200px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCardCVV" runat="server" ControlToValidate="tb_cardCVV" Display="Dynamic" ErrorMessage="Card CVV is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email Address:</td>
                    <td>
            <asp:TextBox ID="tb_email" runat="server" Witdh="200px"  CssClass="auto-style3"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="tb_email" Display="Dynamic" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td>
            <asp:TextBox ID="tb_password" runat="server" Witdh="200px" TextMode="Password" onkeyup="javascript:validate()"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="tb_password" Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="lbl_pwdchecker" runat="server" Text="pwdchecker"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check Password" Width="285px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password:</td>
                    <td>
            <asp:TextBox ID="tb_cfmpassword" runat="server" Witdh="200px" TextMode="Password" onkeyup="javascript:cfmpwdValidation()"></asp:TextBox>
                        <asp:Label ID="lbl_cfmpwdchecker" runat="server" Text="Password Checker"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Date Of Birth:</td>
                    <td>
            <asp:TextBox ID="tb_dob" runat="server" Witdh="200px" TextMode="Date" OnTextChanged="tb_dob_TextChanged" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDob" runat="server" ControlToValidate="tb_dob" Display="Dynamic" ErrorMessage="Date of Birth is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Verification Code:</td>
                    <td>  
            <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/Captcha.aspx" Width ="186px" />
            <asp:Label runat="server" ID="lblCaptchaMessage"></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Enter Verification Code:</td>
                    <td> 
            <asp:TextBox runat="server" ID="txtVerificationCode"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtVerificationCode" runat="server" ControlToValidate="txtVerificationCode" Display="Dynamic" ErrorMessage="Verification Code is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="lb_error1" runat="server"></asp:Label>
                    </td>
                    <td>
            <asp:Button ID="Register" runat="server" OnClick="Register_Click" Text="Register" Width="136px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

