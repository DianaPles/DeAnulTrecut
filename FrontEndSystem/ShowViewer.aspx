<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowViewer.aspx.cs" Inherits="ShowViewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TV Show Page</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <p>
        <asp:Label ID="lblReviews" runat="server" Font-Bold="True" style="z-index: 1; left: 255px; top: 585px; position: absolute" Text="Reviews:"></asp:Label>
        <asp:ListBox ID="lstShowReviewList" runat="server" style="z-index: 1; left: 255px; top: 617px; position: absolute; height: 158px; width: 812px; " Font-Italic="True" Font-Underline="True"></asp:ListBox>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" style="z-index: 1; left: 1102px; top: 617px; position: absolute" Text="Add a review" width="106px" />
        <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 1102px; top: 732px; position: absolute"></asp:Label>
            <asp:Button ID="btnTrending" runat="server" OnClick="btnTrending_Click" style="z-index: 1; left: 611px; top: 34px; position: absolute; height: 42px; width: 222px; " Text="Trending " />
        </p>
        <div>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        </div>
        <p>  
            &nbsp;</p>
        <p>
        <asp:ImageButton ID="imgBtnProfile" runat="server" ImageUrl="~/Images/ProfileIcon.png" OnClick="imgBtnProfile_Click" style="z-index: 1; left: 1399px; top: 59px; position: absolute; height: 50px; " />
        <asp:Label ID="lblShowDetails" runat="server" style="z-index: 1; left: 255px; top: 152px; position: absolute" Text="TV Show Details" Font-Bold="True" Font-Overline="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
        </p>
        <p> 
        <asp:Label ID="lblTitleText" runat="server" style="z-index: 1; left: 255px; top: 193px; width: 400px; position: absolute" Font-Bold="True" Font-Size="Large"></asp:Label>
        <asp:Button ID="btnDiscussions" runat="server" height="42px" OnClick="btnDiscussions_Click" style="z-index: 1; left: 833px; top: 34px; position: absolute; bottom: 851px;" Text="Discussion Board" width="222px" />
        </p>
        <p>
        <asp:Image ID="imgCoverImage" runat="server" style="z-index: 1; left: 255px; top: 229px; width: 200px; height: 300px; position: absolute" />
        <asp:Label ID="lblGenreText" runat="server" style="z-index: 1; left: 700px; top: 223px; width: 500px; position: absolute"></asp:Label>
        <asp:Label ID="lblGenreLabel" runat="server" style="z-index: 1; left: 600px; top: 223px; position: absolute" Text="Genre(s): "></asp:Label>
        <asp:Label ID="lblDescriptionText" runat="server" style="z-index: 1; left: 600px; top: 398px; width: 600px; height: 100px; position: absolute" BorderStyle="Groove"></asp:Label>
        <asp:Label ID="lblReleaseDate" runat="server" style="z-index: 1; left: 600px; top: 258px; position: absolute" Text="Release Date: "></asp:Label>
        <asp:Label ID="lblReleaseDateText" runat="server" style="z-index: 1; left: 700px; top: 259px; width: 500px; position: absolute"></asp:Label>
        <asp:Label ID="lblCreators" runat="server" style="z-index: 1; left: 600px; top: 284px; position: absolute" Text="Creator(s):"></asp:Label>
        <asp:Label ID="lblStarActors" runat="server" style="z-index: 1; left: 600px; top: 311px; position: absolute" Text="Star Actors:"></asp:Label>
        <asp:Label ID="lblCreatorsText" runat="server" style="z-index: 1; left: 700px; top: 283px; width: 500px; position: absolute"></asp:Label>
        <asp:Label ID="lblStarActorsText" runat="server" style="z-index: 1; left: 701px; top: 311px; width: 500px; position: absolute"></asp:Label>
        <asp:Label ID="lblSeasons" runat="server" style="z-index: 1; left: 600px; top: 336px; position: absolute" Text="Seasons: "></asp:Label>
        <asp:Label ID="lblSeasonsText" runat="server" style="z-index: 1; left: 700px; top: 338px; width: 500px; position: absolute"></asp:Label>
        </p>
        <p>
        <asp:Label ID="lblRating" runat="server" style="z-index: 1; left: 600px; top: 363px; position: absolute" Text="Rating: "></asp:Label>
        <asp:Label ID="lblRatingText" runat="server" style="z-index: 1; left: 700px; top: 365px; width: 500px; position: absolute"></asp:Label>
        <asp:Button ID="btnViewReview" runat="server" OnClick="btnViewReview_Click" style="z-index: 1; left: 1102px; top: 655px; position: absolute" Text="View review" height="26px" width="106px" />
        </p>
        <asp:Button ID="btnHome" runat="server" height="42px" OnClick="btnHome_Click" style="z-index: 1; left: 389px; top: 34px; position: absolute" Text="Home Page" width="222px" />
        <p>
        <asp:Label ID="lblAverageRating" runat="server" style="z-index: 1; left: 1102px; top: 691px; width: 200px; position: absolute"></asp:Label>
        </p>
    </form>
</body>
</html>
