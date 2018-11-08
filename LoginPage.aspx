<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ProjectShoppingCartVijayaLaxmi.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <asp:Login ID="LogIn1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" OnAuthenticate="LogIn1_Authenticate" Width="440px" CreateUserText="Create New Account" CreateUserUrl="~/CreateNewAccount.aspx"  Height="173px" >
               

                <FailureTextStyle BorderStyle="None" />
               

                <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
                
            
                </asp:Login>
            <br />
        </div>
        <asp:Label ID="lblLogin" runat="server"></asp:Label>
    </form>
</body>
</html>
