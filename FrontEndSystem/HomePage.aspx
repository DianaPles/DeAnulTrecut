<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        <asp:Label ID="lblTitle" runat="server" SelectionMode="Single" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Underline="True" style="z-index: 1; left: 625px; top: 98px; position: absolute" Text="Home Page"></asp:Label>
        <asp:Label ID="lblMovies" runat="server" style="z-index: 1; left: 307px; top: 189px; position: absolute; width: 71px;" Text="Movies" Font-Bold="True" Font-Italic="False" Font-Overline="True" Font-Size="Large" Font-Underline="True"></asp:Label>
        <asp:ListBox ID="lstMovieList" runat="server" style="z-index: 1; left: 307px; top: 215px; position: absolute; height: 290px; width: 416px"></asp:ListBox>
        <asp:Label ID="lblShows" runat="server" style="z-index: 1; left: 788px; top: 189px; position: absolute" Text="Shows" Font-Bold="True" Font-Overline="True" Font-Size="Large" Font-Underline="True"></asp:Label>
        <asp:ListBox ID="lstShowList" runat="server" style="z-index: 1; left: 788px; top: 215px; position: absolute; width: 416px; height: 290px;"></asp:ListBox>
        <p>
        <asp:ImageButton ID="imgBtnProfile" runat="server" ImageUrl="~/Images/ProfileIcon.png" OnClick="imgBtnProfile_Click" style="z-index: 1; left: 1339px; top: 59px; position: absolute; height: 50px; " />
        </p>
        <asp:Button ID="btnViewMovie" runat="server" style="z-index: 1; left: 624px; top: 515px; position: absolute" Text="View movie" OnClick="btnViewMovie_Click" height="26px" width="99px" />
        <asp:Button ID="btnViewShow" runat="server" height="26px" style="z-index: 1; left: 1105px; top: 515px; position: absolute" Text="View show" width="99px" OnClick="btnViewShow_Click" />
        <asp:Label ID="lblMovieError" runat="server" style="z-index: 1; left: 485px; top: 554px; position: absolute"></asp:Label>
        <asp:Label ID="lblShowError" runat="server" style="z-index: 1; left: 972px; top: 554px; position: absolute"></asp:Label>
        <asp:Button ID="btnSearchMovies" runat="server" height="26px" OnClick="btnSearchMovies_Click" style="z-index: 1; left: 307px; top: 547px; position: absolute; width: 56px; " Text="Search" />
        <p>
            &nbsp;</p>
        <asp:TextBox ID="txtSearchMovie" runat="server" style="z-index: 1; left: 307px; top: 517px; position: absolute; width: 150px"></asp:TextBox>
        <asp:TextBox ID="txtSearchShow" runat="server" style="z-index: 1; left: 788px; top: 517px; position: absolute" width="150px"></asp:TextBox>
        <asp:Button ID="btnSearchShows" runat="server" height="26px" OnClick="btnSearchShows_Click" style="z-index: 1; left: 788px; top: 547px; position: absolute" Text="Search" width="56px" />
        <asp:Button ID="btnClearMovies" runat="server" height="26px" OnClick="btnClearMovies_Click" style="z-index: 1; left: 383px; top: 547px; position: absolute" Text="Clear" width="56px" />
        <asp:Button ID="btnClearShows" runat="server" height="26px" OnClick="btnClearShows_Click" style="z-index: 1; left: 866px; top: 547px; position: absolute" Text="Clear" width="56px" />
        <p>
            <asp:Button ID="btnTrending" runat="server" OnClick="btnTrending_Click" style="z-index: 1; left: 592px; top: 34px; position: absolute; height: 42px; width: 222px; " Text="Trending" />
        </p>
        <asp:Button ID="btnDiscussions" runat="server" height="42px" OnClick="btnDiscussions_Click" style="z-index: 1; left: 814px; top: 34px; position: absolute" Text="Discussion Board" width="222px" />
        <p>
            <asp:Button ID="btnHome" runat="server" height="42px" style="z-index: 1; left: 370px; top: 34px; position: absolute" Text="Home Page" width="222px" />
        </p>
    </form>
</body>
</html>
