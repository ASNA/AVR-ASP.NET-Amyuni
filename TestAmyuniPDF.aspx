<%@ Page Language="AVR" AutoEventWireup="false" CodeFile="TestAmyuniPDF.aspx.vr" Inherits="TestAmyuniPDF" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html>
<head runat="server">
    <title>Amyuni PDF test</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Button ID="buttonPrintDF" runat="server" Text="Print to PDF" />
        <br>
        <br>
        <asp:HyperLink ID="hyperlinkGetPDF" runat="server" Visible="False">Get PDF</asp:HyperLink>
    </form>
</body>
</html>
