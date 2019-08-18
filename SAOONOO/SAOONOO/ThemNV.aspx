<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemNV.aspx.cs" Inherits="SAOONOO.ThemNV" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 295px;
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
        .style4
        {
            height: 30px;
        }
        .style5
        {
            height: 61px;
            width: 289px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="3" class="style4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="#CC0000" Text="HỆ THỐNG QUẢN LÝ NHÂN VIÊN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" rowspan="2">
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
                <td class="style5" rowspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Mã nhân viên</td>
                <td colspan="2">
                    <asp:TextBox ID="txtMaNV" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtMaNV" ErrorMessage="Chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Họ và tên</td>
                <td colspan="2">
                    <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtHoTen" ErrorMessage="Chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Ngày sinh</td>
                <td colspan="2">
                    <asp:TextBox ID="txtNgaySinh" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtNgaySinh" ErrorMessage="Chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Giới tính</td>
                <td colspan="2">
                    <asp:DropDownList ID="ddlGioitinh" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="ddlGioitinh" ErrorMessage="Chưa chọn" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Số điện thoại</td>
                <td colspan="2">
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtSDT" ErrorMessage="Chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtSDT" ErrorMessage="RegularExpressionValidator" 
                        ForeColor="#CC0000" ValidationExpression="\d+([0-9.']\d+)">Vui lòng nhập đúng kiểu</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Địa chỉ</td>
                <td colspan="2">
                    <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtDiaChi" ErrorMessage="Chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Vị trí làm việc</td>
                <td colspan="2">
                    <asp:DropDownList ID="ddlVitrilamviec" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddlVitrilamviec" ErrorMessage="Chưa chọn" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="btnThem" runat="server" onclick="btnThem_Click" Text="Thêm" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="lblThongBao" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
