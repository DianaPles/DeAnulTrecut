<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblSignInPage" runat="server" Font-Bold="True" Font-Size="Larger" style="z-index: 1; left: 276px; top: 138px; position: absolute" Text="Sign In Page"></asp:Label>
        <asp:Label ID="lblUsername" runat="server" style="z-index: 1; left: 276px; top: 178px; position: absolute" Text="Username: "></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" style="z-index: 1; left: 276px; top: 202px; position: absolute; width: 180px"></asp:TextBox>
        <asp:Label ID="lblEmail" runat="server" style="z-index: 1; left: 276px; top: 234px; position: absolute" Text="Email: "></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" style="z-index: 1; left: 276px; top: 259px; position: absolute" width="180px"></asp:TextBox>
        <asp:Label ID="lblPassword" runat="server" style="z-index: 1; left: 276px; top: 289px; position: absolute" Text="Password: "></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" style="z-index: 1; left: 276px; top: 315px; position: absolute; width: 180px" TextMode="Password"></asp:TextBox>
        <asp:Button ID="btnSignIn" runat="server" OnClick="btnSignIn_Click" style="z-index: 1; left: 276px; top: 352px; position: absolute" Text="Sign in" />
        <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 514px; top: 351px; position: absolute" Font-Bold="True"></asp:Label>
        <asp:Button ID="btnRegister" runat="server" BorderStyle="None" OnClick="btnRegister_Click" style="z-index: 1; left: 276px; top: 395px; position: absolute; width: 169px" Text="No account? Register now!" />
        <p>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        </p>
    </form>
</body>
</html>
