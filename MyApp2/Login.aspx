<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyApp2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>

    <script src="https://www.google.com/recaptcha/api.js?render=6LeRd0YaAAAAAEKTdBoceNAvdjrLH3gmfKkiEjlm"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
            <legend>Login</legend>
            <br />
            Username :
            <asp:TextBox ID="tb_userid" runat="server"></asp:TextBox>
            <br />
            Password :
            <asp:TextBox ID="tb_password" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="LoginMe" />
            <br />
            <br />

            <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response"/>

            <asp:Label ID="lbl_Message" runat="server" Text="Error message here (lblMessage)"></asp:Label>
                <br />
                <asp:Label ID="lbl_gScore" runat="server"></asp:Label>
            </fieldset>
        </div>
    </form>
    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('6LeRd0YaAAAAAEKTdBoceNAvdjrLH3gmfKkiEjlm', { action: 'Login' }).then(function (token) {
                document.getElementById("g-recaptcha-response").value = token;
            });
        });
    </script>
</body>
</html>