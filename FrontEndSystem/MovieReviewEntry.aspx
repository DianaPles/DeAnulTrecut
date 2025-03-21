<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MovieReviewEntry.aspx.cs" Inherits="MovieReviewEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Review Entry</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblMovieTitle" runat="server" style="z-index: 1; left: 230px; top: 146px; position: absolute" Text="Movie title: "></asp:Label>
        <asp:Label ID="lblRating" runat="server" style="z-index: 1; left: 230px; top: 174px; position: absolute" Text="Rating: "></asp:Label>
        <asp:Label ID="lblComment" runat="server" style="z-index: 1; left: 228px; top: 206px; position: absolute" Text="Comment: "></asp:Label>
        <asp:TextBox ID="txtRating" runat="server" style="z-index: 1; left: 311px; top: 174px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="txtComment" runat="server" style="z-index: 1; left: 311px; top: 209px; position: absolute; height: 92px; width: 252px; bottom: 369px" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" style="z-index: 1; left: 226px; top: 321px; position: absolute" Text="OK" width="60px" />
        <asp:Button ID="btnCancel" runat="server" style="z-index: 1; left: 307px; top: 321px; position: absolute" Text="Cancel" OnClick="btnCancel_Click" />
        <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 225px; top: 359px; position: absolute"></asp:Label>
        <p>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        </p>
        <asp:Label ID="lblMovieTitleText" runat="server" style="z-index: 1; left: 311px; top: 145px; position: absolute"></asp:Label>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 442px; top: 174px; position: absolute" Text="/5"></asp:Label>
    </form>
</body>
</html>
