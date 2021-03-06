﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCalendar.aspx.cs" Inherits="DevStandardControl2.FrmCalendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>캘린더 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server" 
                OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <hr />
            <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC"
                BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest"
                Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px"
                ShowGridLines="true" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="true" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC"/>
                <OtherMonthDayStyle ForeColor="#CC9966"/>
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="true"/> 
                <SelectedDayStyle BackColor="#990000" Font-Bold="true" Font-Size="9pt"
                    ForeColor="#FFFFCC" />
            </asp:Calendar>
        </div>
    </form>
</body>
</html>
