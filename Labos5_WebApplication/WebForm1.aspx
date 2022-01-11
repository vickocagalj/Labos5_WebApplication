<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Labos5_WebApplication.WebForm1" %>

<%@ Register src="LogIn.ascx" tagname="LogIn" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <uc1:LogIn ID="LogIn1" runat="server" />
    </form>
</body>
</html>
