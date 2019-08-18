<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLNV.aspx.cs" Inherits="SAOONOO.QLNV" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            height: 30px;
        }
        .style2
        {
            width: 295px;
            height: 61px;
        }
        .style3
        {
            height: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="2" class="style4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="#CC0000" Text="HỆ THỐNG QUẢN LÝ NHÂN VIÊN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Menu ID="Menu1" runat="server" onmenuitemclick="Menu1_MenuItemClick">
                        <Items>
                            <asp:MenuItem Text="Nhân viên" Value="Nhân viên">
                                <asp:MenuItem Text="Thêm" Value="Thêm" NavigateUrl="~/ThemNV.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Sửa" Value="Sửa"></asp:MenuItem>
                                <asp:MenuItem Text="Xóa" Value="Xóa"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Bàn" Value="Bàn">
                                <asp:MenuItem Text="Thêm" Value="Thêm"></asp:MenuItem>
                                <asp:MenuItem Text="Xóa" Value="Xóa" NavigateUrl="~/XOABAN.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Menu" Value="Menu">
                                <asp:MenuItem Text="Thêm" Value="Thêm"></asp:MenuItem>
                                <asp:MenuItem Text="Sửa" Value="Sửa"></asp:MenuItem>
                                <asp:MenuItem Text="Xóa" Value="Xóa"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
