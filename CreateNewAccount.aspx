<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateNewAccount.aspx.cs" Inherits="ProjectShoppingCartVijayaLaxmi.CreateNewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text=" Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter your password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <br />
            Re-enter Password&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtRepass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRepass" ErrorMessage="Password not matched" ForeColor="#FF3300"></asp:CompareValidator>
            <br />
            <br />
        </div>
        <asp:Label ID="Label3" runat="server" Text="Mobile Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMobile" ErrorMessage="mobile number not correct" ValidationExpression="[7-9]{1}[0-9]{9}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
        <br />
        <br />
        Email ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter email id" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="#FF3300"></asp:RegularExpressionValidator>
        <br />
        <br />
        Security Question&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="drpdownSecurity" runat="server" Height="41px" OnSelectedIndexChanged="drpdownSecurity_SelectedIndexChanged">
            <asp:ListItem Value="What is your pet name?">What is your pet name?</asp:ListItem>
            <asp:ListItem Value="In which city you were born?"></asp:ListItem>
            <asp:ListItem Value="What is the name of your first school?"></asp:ListItem>
            <asp:ListItem Value="What is your favorite color?"></asp:ListItem>
            <asp:ListItem Value="What is your father's middle name?"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drpdownSecurity" ErrorMessage="Select one question" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        Answer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnswer" ErrorMessage="Enter your Answer" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="lblsuccess" runat="server"></asp:Label>
    </form>
</body>
</html>
