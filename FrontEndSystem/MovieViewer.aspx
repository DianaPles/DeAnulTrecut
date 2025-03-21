<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MovieViewer.aspx.cs" Inherits="MovieViewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Page</title>   
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblMovieDetails" runat="server" style="z-index: 1; left: 255px; top: 152px; position: absolute" Text="Movie Details" Font-Bold="True" Font-Overline="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
        <asp:Label ID="lblTitle" runat="server" style="z-index: 1; left: 255px; top: 193px; position: absolute" Font-Bold="True" Font-Size="Large"></asp:Label>
        <asp:Image ID="imgCoverImage" runat="server" style="z-index: 1; left: 255px; top: 229px; width: 200px; height: 300px; position: absolute" />
        <p>
            <asp:Label ID="lblRuntimeText" runat="server" style="z-index: 1; left: 700px; top: 358px; width: 500px; position: absolute"></asp:Label>
        </p>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        <asp:Label ID="lblReleaseDateText" runat="server" style="z-index: 1; left: 700px; top: 249px; width: 500px; position: absolute"></asp:Label>
        <asp:Label ID="lblDescriptionText" runat="server" style="z-index: 1; left: 600px; top: 422px; width: 600px; height: 100px; position: absolute; " BorderStyle="Groove"></asp:Label>
        <asp:Label ID="lblGenreText" runat="server" style="z-index: 1; left: 700px; top: 222px; width: 500px; position: absolute"></asp:Label>
        <asp:Label ID="lblRatingText" runat="server" style="z-index: 1; left: 700px; top: 390px; width: 500px; position: absolute"></asp:Label>
        <asp:Label ID="lblDirectorsText" runat="server" style="z-index: 1; left: 700px; top: 276px; width: 500px; position: absolute"></asp:Label>
        <asp:Label ID="lblWritersText" runat="server" style="z-index: 1; left: 700px; top: 333px; width: 500px; position: absolute"></asp:Label>
        <asp:Label ID="lblStarActorsText" runat="server" style="z-index: 1; left: 700px; top: 302px; width: 500px; position: absolute"></asp:Label>
        <p> 
        <asp:ImageButton ID="imgBtnProfile" runat="server" ImageUrl="~/Images/ProfileIcon.png" OnClick="imgBtnProfile_Click" style="z-index: 1; left: 1399px; top: 59px; position: absolute; height: 50px; " />
        <asp:Button ID="btnDiscussions" runat="server" height="42px" OnClick="btnDiscussions_Click" style="z-index: 1; left: 824px; top: 34px; position: absolute" Text="Discussion Board" width="222px" />
        </p>
        <asp:Label ID="lblGenreLabel" runat="server" style="z-index: 1; left: 600px; top: 223px; position: absolute" Text="Genre(s): "></asp:Label>
        <asp:Label ID="lblReleaseDate" runat="server" style="z-index: 1; left: 600px; top: 249px; position: absolute; height: 19px;" Text="Release Date: "></asp:Label>
        <asp:Label ID="lblDirectors" runat="server" style="z-index: 1; left: 600px; top: 276px; position: absolute" Text="Directors: "></asp:Label>
        <asp:Label ID="lblStarActors" runat="server" style="z-index: 1; left: 600px; top: 303px; position: absolute" Text="Star Actors:"></asp:Label>
        <asp:Label ID="lblWriters" runat="server" style="z-index: 1; left: 600px; top: 332px; position: absolute" Text="Writers: "></asp:Label>
        <asp:Label ID="lblRuntime" runat="server" style="z-index: 1; left: 600px; top: 359px; position: absolute" Text="Runtime: "></asp:Label>
        <asp:Label ID="lblRating" runat="server" style="z-index: 1; left: 600px; top: 388px; position: absolute" Text="Rating: "></asp:Label>
        <asp:ListBox ID="lstMovieReviewList" runat="server" style="z-index: 1; left: 255px; top: 617px; position: absolute; height: 158px; width: 812px; right: 339px" Font-Italic="True" Font-Underline="True"></asp:ListBox>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" style="z-index: 1; left: 1102px; top: 617px; position: absolute" Text="Add a review" width="106px" />
        <asp:Label ID="lblReviews" runat="server" Font-Bold="True" style="z-index: 1; left: 255px; top: 585px; position: absolute" Text="Reviews:"></asp:Label>
        <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 1102px; top: 731px; position: absolute"></asp:Label>
        <p>
            <asp:Button ID="btnTrending" runat="server" OnClick="btnTrending_Click" style="z-index: 1; left: 604px; top: 34px; position: absolute; height: 42px; width: 222px; " Text="Trending" />
        </p>
        <p>
            <asp:Button ID="btnHome" runat="server" height="42px" OnClick="btnHome_Click" style="z-index: 1; left: 383px; top: 34px; position: absolute" Text="Home Page" width="222px" />
        <asp:Button ID="btnViewReview" runat="server" OnClick="btnViewReview_Click" style="z-index: 1; left: 1102px; top: 655px; position: absolute" Text="View review" height="26px" width="106px" />
        </p>
        <asp:Label ID="lblAverageRating" runat="server" style="z-index: 1; left: 1102px; top: 691px; width: 200px; position: absolute"></asp:Label>
    </form>
</body>
</html>
