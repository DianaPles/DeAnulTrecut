<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfileViewer.aspx.cs" Inherits="ProfileViewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Profile</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        <asp:Label ID="lblProfileViewer" runat="server" SelectionMode="Single" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Underline="True" style="z-index: 1; left: 543px; top: 131px; position: absolute" Text="Your Profile"></asp:Label>
            <asp:Button ID="btnTrending" runat="server" OnClick="btnTrending_Click" style="z-index: 1; left: 611px; top: 34px; position: absolute; height: 42px; width: 222px; " Text="Trending " />
        </p>
        <asp:Label ID="lblUsername" runat="server" style="z-index: 1; left: 498px; top: 234px; position: absolute" Text="Your username: "></asp:Label>
        <asp:Label ID="lblEmail" runat="server" style="z-index: 1; left: 498px; top: 266px; position: absolute" Text="Your email: "></asp:Label>
        <asp:Button ID="btnSignOut" runat="server" OnClick="btnSignOut_Click" style="z-index: 1; left: 595px; top: 314px; position: absolute" Text="Sign out" />
        <asp:Label ID="lblUsernameText" runat="server" style="z-index: 1; left: 631px; top: 234px; position: absolute"></asp:Label>
        <asp:Label ID="lblEmailText" runat="server" style="z-index: 1; left: 631px; top: 266px; position: absolute"></asp:Label>
        <asp:Label ID="lblMemberId" runat="server" style="z-index: 1; left: 498px; top: 202px; position: absolute" Text="Your member ID:"></asp:Label>
        <asp:Label ID="lblMemberIdText" runat="server" style="z-index: 1; left: 631px; top: 202px; position: absolute"></asp:Label>
        <asp:Button ID="btnDiscussions" runat="server" height="42px" OnClick="btnDiscussions_Click" style="z-index: 1; left: 833px; top: 34px; position: absolute; bottom: 851px;" Text="Discussion Board" width="222px" />
        <p>
        <asp:ImageButton ID="imgBtnProfile" runat="server" ImageUrl="~/Images/ProfileIcon.png" OnClick="imgBtnProfile_Click" style="z-index: 1; left: 1229px; top: 59px; position: absolute; height: 50px; " />
            <asp:Button ID="btnHome" runat="server" height="42px" OnClick="btnHome_Click" style="z-index: 1; left: 389px; top: 34px; position: absolute" Text="Home Page" width="222px" />
        </p>
    </form>
</body>
</html>
