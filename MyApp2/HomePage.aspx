﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MyApp2.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>HomePage</legend>

                <br />

                <asp:Label ID="lblMessage" runat="server" EnableViewState="false" />
                <br />
                <br />
                User Profile<br />
                <br />
                UserID:
                <asp:Label ID="lbl_userID" runat="server" Text="lbl_userID"></asp:Label>
                <br />
                <br />
                Card:
                <asp:Label ID="lbl_card" runat="server" Text="lbl_card"></asp:Label>
                <br />
                <br />
                Name:<asp:Label ID="lbl_name" runat="server" Text="lbl_name"></asp:Label>
                <br />
                <br />

                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="LogoutMe" Visible="false" />

                <p />
            </fieldset>
        </div>
    </form>
</body>
</html>
