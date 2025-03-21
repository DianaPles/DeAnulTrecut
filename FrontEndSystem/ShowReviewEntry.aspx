<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowReviewEntry.aspx.cs" Inherits="ShowReviewEntry" %>

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
        <p>
            &nbsp;</p>
        <p>
        <asp:Label ID="lblShowTitle" runat="server" style="z-index: 1; left: 230px; top: 146px; position: absolute" Text="Show title: "></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblShowTitleText" runat="server" style="z-index: 1; left: 311px; top: 146px; position: absolute"></asp:Label>
        </p>
        <p>
        <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute" OnClick="imgBtnLogo_Click" />
        </p>
        <p>
        <asp:Label ID="lblRating" runat="server" style="z-index: 1; left: 230px; top: 174px; position: absolute" Text="Rating: "></asp:Label>
        <asp:TextBox ID="txtRating" runat="server" style="z-index: 1; left: 311px; top: 174px; position: absolute"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="lblComment" runat="server" style="z-index: 1; left: 230px; top: 217px; position: absolute" Text="Comment: "></asp:Label>
        </p>
        <p>
        <asp:TextBox ID="txtComment" runat="server" style="z-index: 1; left: 311px; top: 209px; position: absolute; height: 92px; width: 252px; bottom: 357px" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p>
        <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" style="z-index: 1; left: 226px; top: 321px; position: absolute" Text="OK" width="60px" />
        <asp:Button ID="btnCancel" runat="server" style="z-index: 1; left: 307px; top: 321px; position: absolute" Text="Cancel" OnClick="btnCancel_Click" />
        </p>
        <p>
        <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 225px; top: 359px; position: absolute"></asp:Label>
        </p>
        <p>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 442px; top: 174px; position: absolute" Text="/5"></asp:Label>
        </p>
    </form>
</body>
</html>
