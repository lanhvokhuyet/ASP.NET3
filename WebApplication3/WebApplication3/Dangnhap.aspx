<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="WebApplication3.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
  <form id="Form1" runat="server">
          <div>
          <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
          <br/>
          <input id="txtEmail" type="text" runat="server" />
          <br />
          <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
          <br />
          <input id="txtPassword" type="password" runat="server" />
          <br />
          <asp:Button ID="btnLogin" type="submit" runat="server" Value="Sign in now" onserverclick="btnLogin_Click" OnClick="btnLogin_Click" Text="Sign in now"></asp:Button>
          <div id="divInfo" runat="server"></div>
        </div>
</form>
</body>
</html>
