<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRequestUserHostAddress.aspx.cs" Inherits="DevASPNET.FrmRequestUserHostAddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>IP 주소 얻기</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            IP 주소 얻기<br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:Label ID="Label2" runat="server"></asp:Label><br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <!--Visual Studio 개발 환경에서 실행하면 localhost를 통해 실행되는데, 
                이때 출력되는 값은 localhost, 127.0.0.1, ::1 세 가지 형태 중 하나로 출력-->
        </div>
    </form>
</body>
</html>
