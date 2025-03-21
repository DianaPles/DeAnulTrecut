<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowReviewViewer.aspx.cs" Inherits="ShowReviewViewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        </p>
        <asp:Label ID="lblShowTitle" runat="server" style="z-index: 1; left: 223px; top: 138px; position: absolute" Text="Show title: "></asp:Label>
        <asp:Label ID="lblShowTitleText" runat="server" style="z-index: 1; left: 349px; top: 139px; position: absolute"></asp:Label>
        <asp:Label ID="lblUser" runat="server" style="z-index: 1; left: 223px; top: 168px; position: absolute" Text="User: "></asp:Label>
        <asp:Label ID="lblUserText" runat="server" style="z-index: 1; left: 348px; top: 168px; position: absolute"></asp:Label>
        <asp:Label ID="lblRating" runat="server" style="z-index: 1; left: 223px; top: 197px; position: absolute" Text="Rating: "></asp:Label>
        <asp:Label ID="lblComment" runat="server" style="z-index: 1; left: 223px; top: 225px; position: absolute" Text="Comment: "></asp:Label>
        <asp:Label ID="lblRatingText" runat="server" style="z-index: 1; left: 350px; top: 197px; position: absolute"></asp:Label>
        <asp:Label ID="lblCommentText" runat="server" style="z-index: 1; left: 349px; top: 229px; width: 300px; height: 100px; position: absolute" BorderStyle="Groove"></asp:Label>
        <asp:Button ID="btnBack" runat="server" style="z-index: 1; left: 211px; top: 344px; position: absolute" Text="Back to show" height="26px" OnClick="btnBack_Click" width="114px" />
        <asp:Button ID="btnDelete" runat="server" style="z-index: 1; left: 349px; top: 344px; position: absolute" Text="Delete review" OnClick="btnDelete_Click" />
        <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 211px; top: 386px; position: absolute"></asp:Label>
    </form>
</body>
</html>
