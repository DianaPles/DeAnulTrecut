<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Discussions.aspx.cs" Inherits="Discussions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discussion Board</title>
    <link rel="stylesheet" href="css/Styles.css"/>
</head>
<body>
    <div>
        <form id="form1" runat="server">
            <asp:ImageButton ID="imgBtnLogo" runat="server" ImageUrl="~/Images/MovieMindsNetworkLogo.png" style="z-index: 1; left: 10px; top: 34px; position: absolute; right: 1191px;" OnClick="imgBtnLogo_Click" />
            <asp:ImageButton ID="imgBtnProfile" runat="server" ImageUrl="~/Images/ProfileIcon.png" OnClick="imgBtnProfile_Click" style="z-index: 1; left: 1339px; top: 59px; position: absolute; height: 50px; " />
            <asp:Label ID="lblDate4" runat="server" Font-Underline="True" style="z-index: 1; left: 1099px; top: 502px; position: absolute" Text="Date posted: "></asp:Label>
            <asp:Label ID="lblTitle" runat="server" SelectionMode="Single" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Underline="True" style="z-index: 1; left: 623px; top: 130px; position: absolute" Text="Discussion Board"></asp:Label>       
            <asp:Label ID="lblMessageText1" runat="server" style="z-index: 1; left: 336px; top: 724px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
            <asp:Label ID="lblMessageText2" runat="server" style="z-index: 1; left: 336px; top: 643px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
            <asp:Label ID="lblMessageText3" runat="server" style="z-index: 1; left: 336px; top: 561px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
            <asp:Label ID="lblMessageText4" runat="server" style="z-index: 1; left: 336px; top: 476px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
            <asp:Label ID="lblMessageText5" runat="server" style="z-index: 1; left: 336px; top: 391px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
            <asp:Label ID="lblMessageText6" runat="server" style="z-index: 1; left: 336px; top: 310px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
            <asp:Label ID="lblDate7" runat="server" Font-Underline="True" style="z-index: 1; left: 1099px; top: 256px; position: absolute" Text="Date posted: "></asp:Label>
            <asp:Label ID="lblMessageText7" runat="server" style="z-index: 1; left: 336px; top: 228px; width: 750px; height: 50px; position: absolute" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" BackColor="White" Font-Names="Calibri"></asp:Label>
            <asp:Label ID="lblErrorEx" runat="server" style="z-index: 1; left: 808px; top: 831px; position: absolute"></asp:Label>
            <asp:Label ID="lblUsername1" runat="server" style="z-index: 1; left: 1099px; top: 724px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
            <asp:Label ID="lblUsername2" runat="server" style="z-index: 1; left: 1099px; top: 643px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
            <asp:Label ID="lblUsername3" runat="server" style="z-index: 1; left: 1099px; top: 561px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
            <asp:Label ID="lblUsername4" runat="server" style="z-index: 1; left: 1099px; top: 476px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
            <asp:Label ID="lblUsername5" runat="server" style="z-index: 1; left: 1099px; top: 391px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
            <asp:Label ID="lblUsername6" runat="server" style="z-index: 1; left: 1099px; top: 310px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
            <asp:Label ID="lblUsername7" runat="server" style="z-index: 1; left: 1099px; top: 228px; position: absolute" Font-Underline="True">Posted by: </asp:Label>
            <asp:Label ID="lblDate1" runat="server" Font-Underline="True" style="z-index: 1; left: 1099px; top: 751px; position: absolute" Text="Date posted: "></asp:Label>
            <asp:Label ID="lblDate2" runat="server" Font-Underline="True" style="z-index: 1; left: 1099px; top: 671px; position: absolute" Text="Date posted: "></asp:Label>
            <asp:Label ID="lblDate3" runat="server" Font-Underline="True" style="z-index: 1; left: 1099px; top: 586px; position: absolute" Text="Date posted: "></asp:Label>
            <asp:Label ID="lblDate5" runat="server" Font-Underline="True" style="z-index: 1; left: 1099px; top: 418px; position: absolute" Text="Date posted: "></asp:Label>
            <asp:Label ID="lblDate6" runat="server" Font-Underline="True" style="z-index: 1; left: 1099px; top: 338px; position: absolute" Text="Date posted: "></asp:Label>
            <asp:TextBox ID="txtMessage" runat="server" style="z-index: 1; left: 336px; top: 800px; position: absolute; height: 72px; width: 342px" TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" style="z-index: 1; left: 336px; top: 889px; position: absolute" Text="Send message" width="131" />
            <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 484px; top: 891px; position: absolute; right: 861px;"></asp:Label>
            <asp:Button ID="btnHome" runat="server" height="42px" OnClick="btnHome_Click" style="z-index: 1; left: 389px; top: 34px; position: absolute" Text="Home Page" width="222px" />
            <asp:Button ID="btnTrending" runat="server" OnClick="btnTrending_Click" style="z-index: 1; left: 611px; top: 34px; position: absolute; height: 42px; width: 222px; " Text="Trending " />
        <asp:Button ID="btnDiscussions" runat="server" height="42px" OnClick="btnDiscussions_Click" style="z-index: 1; left: 833px; top: 34px; position: absolute; bottom: 851px;" Text="Discussion Board" width="222px" />
        </form>
    </div>
</body>
</html>
