﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmXml.aspx.cs" Inherits="DevStandardControl2.FrmXml1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>XML 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Xml ID="xmlCompany" runat="server" DocumentSource="~/FrmXml.xml"
                TransformSource="~/FrmXml.xslt">
            </asp:Xml>
        </div>
    </form>
</body>
</html>
