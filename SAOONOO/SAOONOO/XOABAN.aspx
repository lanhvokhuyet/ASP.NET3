<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XOABAN.aspx.cs" Inherits="SAOONOO.XOABAN" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%;">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="HỆ THỐNG QUẢN LÝ BÀN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Menu ID="Menu1" runat="server">
                        <Items>
                            <asp:MenuItem Text="Nhân viên" Value="Nhân viên">
                                <asp:MenuItem Text="Thêm" Value="Thêm" NavigateUrl="~/ThemNV.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Xóa" Value="Xóa"></asp:MenuItem>
                                <asp:MenuItem Text="Sửa" Value="Sửa"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Bàn" Value="Bàn">
                                <asp:MenuItem Text="Thêm" Value="Thêm"></asp:MenuItem>
                                <asp:MenuItem Text="Xóa" Value="Xóa" NavigateUrl="~/XOABAN.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Menu" Value="Menu">
                                <asp:MenuItem Text="Thêm" Value="Thêm"></asp:MenuItem>
                                <asp:MenuItem Text="Xóa" Value="Xóa"></asp:MenuItem>
                                <asp:MenuItem Text="Sửa" Value="Sửa"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <asp:GridView ID="gvBan" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="maban" ForeColor="#333333" GridLines="None" 
        onrowDeleting="gvBan_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="maban" HeaderText="Mã bàn" />
            <asp:BoundField DataField="tenban" HeaderText="Tên bàn" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" 
                        CommandArgument='<%# Eval("maban") %>' onclick="btnDelete_Click1" 
                        onclientclick="return confirm(&quot;Bạn có muốn xóa không?&quot;);" 
                        Text="Xóa" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" Wrap="False" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:Label ID="lblThongbao" runat="server"></asp:Label>
    </form>
</body>
</html>
