<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="GiuaKy.DangKi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Height="341px" Width="620px">
            <asp:Label ID="Label1" runat="server" Text="Họ và tên"></asp:Label>
            <asp:TextBox ID="txtHoTen" runat="server" style="margin-left: 129px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Nhập họ tên"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 153px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Nhập sai email" ValidationExpression="Internet Email Address"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Tài khoản"></asp:Label>
            <asp:TextBox ID="txtTK" runat="server" style="margin-left: 130px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTK" ErrorMessage="Nhập tài khoản"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Mật khẩu"></asp:Label>
            <asp:TextBox ID="txtMK" runat="server" style="margin-left: 130px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtMK" ErrorMessage="Nhập mật khẩu"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
            <asp:TextBox ID="txtNLMK" runat="server" style="margin-left: 80px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMK" ControlToValidate="txtNLMK" ErrorMessage="Nhập lại mật khẩu sai"></asp:CompareValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtNLMK" ErrorMessage="Nhập mật khẩu lần hai"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="btnDN" runat="server" OnClick="btnDN_Click" style="margin-left: 229px" Text="Đăng nhập" />
        </asp:Panel>
           <asp:Label ID="Label6" runat="server" Text="Thông tin đăng kí"></asp:Label>
            <span id="entryComent" runat="server"/>
    </div>
    </form>
</body>
</html>
