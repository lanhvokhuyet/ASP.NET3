<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="SAOONOO.DangNhap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style4
        {
            width: 333px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
            width: 411px;
        }
        .style8
        {
            width: 411px;
        }
        .style9
        {
            width: 250px;
            height: 23px;
        }
        .style10
        {
            width: 250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
        <br />
        <br />
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        ForeColor="#CC0000" Text="ĐĂNG NHẬP HỆ THỐNG"></asp:Label>
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    </td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Login ID="Login1" runat="server" 
                        DestinationPageUrl="~/QLNV.aspx" 
                        FailureText="Đăng nhập không thành công ! Vui lòng thử lại !" 
                        InstructionText="Vui lòng nhập tài khoản và mật khẩu !" 
                        onauthenticate="Login1_Authenticate" TitleText="ĐĂNG NHẬP" 
                        UserNameRequiredErrorMessage="Vui lòng nhập UserName" 
                        LoginButtonText="Đăng nhập">
                    </asp:Login>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
