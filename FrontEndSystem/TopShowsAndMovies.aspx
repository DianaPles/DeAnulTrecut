<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TopShowsAndMovies.aspx.cs" Inherits="TopShowsAndMovies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trending Content</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        <asp:ImageButton ID="imgBtnProfile" runat="server" ImageUrl="~/Images/ProfileIcon.png" OnClick="imgBtnProfile_Click" style="z-index: 1; left: 1399px; top: 59px; position: absolute; height: 50px; " />
        <asp:Label ID="lblTopMovies" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Larger" Font-Underline="True" style="z-index: 1; left: 682px; top: 190px; position: absolute" Text="Top 5 Movies"></asp:Label>
        <p>
            <asp:Label ID="lblTopShows" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Larger" Font-Underline="True" style="z-index: 1; left: 686px; top: 575px; position: absolute" Text="Top 5 Shows"></asp:Label>
        <asp:ImageButton ID="imgBtnMovieImage1" runat="server" style="z-index: 1; left: 173px; top: 236px; width: 200px; height: 300px; position: absolute" OnClick="imgBtnMovieImage1_Click" />
            <asp:Button ID="btnTrending" runat="server" OnClick="btnTrending_Click" style="z-index: 1; left: 639px; top: 34px; position: absolute; height: 42px; width: 222px; " Text="Trending " />
        </p>
        <asp:ImageButton ID="imgBtnMovieImage2" runat="server" style="z-index: 1; left: 411px; top: 236px; width: 200px; height: 300px; position: absolute" OnClick="imgBtnMovieImage2_Click" />
        <p>
        <asp:ImageButton ID="imgBtnMovieImage3" runat="server" style="z-index: 1; left: 651px; top: 236px; width: 200px; height: 300px; position: absolute" OnClick="imgBtnMovieImage3_Click" />
        <asp:ImageButton ID="imgBtnMovieImage4" runat="server" style="z-index: 1; left: 901px; top: 236px; width: 200px; height: 300px; position: absolute" OnClick="imgBtnMovieImage4_Click" />
        <asp:ImageButton ID="imgBtnMovieImage5" runat="server" style="z-index: 1; left: 1141px; top: 236px; width: 200px; height: 300px; position: absolute" OnClick="imgBtnMovieImage5_Click" />
        <asp:ImageButton ID="imgBtnShowImage1" runat="server" style="z-index: 1; left: 173px; top: 624px; width: 200px; height: 300px; position: absolute" OnClick="imgBtnShowImage1_Click" />
        <asp:ImageButton ID="imgBtnShowImage2" runat="server" style="z-index: 1; left: 411px; top: 624px; width: 200px; height: 300px; position: absolute" OnClick="imgBtnShowImage2_Click" />
        <asp:Label ID="lblTitle" runat="server" SelectionMode="Single" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Underline="True" style="z-index: 1; left: 627px; top: 127px; position: absolute" Text="Trending Content"></asp:Label>
        <asp:Button ID="btnDiscussions" runat="server" height="42px" OnClick="btnDiscussions_Click" style="z-index: 1; left: 861px; top: 34px; position: absolute" Text="Discussion Board" width="222px" />
        </p>
        <p>
        <asp:ImageButton ID="imgBtnShowImage3" runat="server" style="z-index: 1; left: 650px; top: 624px; width: 200px; height: 300px; position: absolute" OnClick="imgBtnShowImage3_Click" />
            <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 59px; top: 146px; position: absolute"></asp:Label>
            <asp:Button ID="btnHome" runat="server" height="42px" OnClick="btnHome_Click" style="z-index: 1; left: 417px; top: 34px; position: absolute" Text="Home Page" width="222px" />
        </p>
        <p>
        <asp:ImageButton ID="imgBtnShowImage4" runat="server" style="z-index: 1; left: 901px; top: 624px; width: 200px; height: 300px; position: absolute" OnClick="imgBtnShowImage4_Click" />
        </p>
        <p>
        <asp:ImageButton ID="imgBtnShowImage5" runat="server" style="z-index: 1; left: 1141px; top: 624px; width: 200px; height: 300px; position: absolute" OnClick="imgBtnShowImage5_Click" />
        </p>
    </form>
</body>
</html>
