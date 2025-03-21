<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MovieReviewConfirmDelete.aspx.cs" Inherits="MovieReviewConfirmDelete" %>

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
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 10px; top: 34px; position: absolute" Text="Are you sure you want to delete this review?" Font-Size="XX-Large"></asp:Label>
        <asp:Button ID="btnYes" runat="server" OnClick="btnYes_Click" style="z-index: 1; left: 87px; top: 118px; position: absolute; height: 36px; width: 166px;" Text="Yes!" />
            <asp:Button ID="btnNo" runat="server" height="36px" OnClick="btnNo_Click" style="z-index: 1; left: 291px; top: 118px; position: absolute; width: 166px;" Text="No!" />
    </form>
</body>
</html>
