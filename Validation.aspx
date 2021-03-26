<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Validators.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Select1 {
            height: 6px;
            width: 153px;
        }
        #Country {
            width: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="Nom" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Nom" ErrorMessage="Le champ est obligatoire" ForeColor="#FF3300" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password "></asp:Label>
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="passwords not match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="The email is not in the correct format" ForeColor="Red" ValidationExpression="^\w+@\w+\.com" SetFocusOnError="True">*</asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Mobile Number"></asp:Label>
            <asp:TextBox ID="MobileNumber" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="MobileNumber" Display="Dynamic" ErrorMessage="The numbre has to contain 10 integers" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate1" SetFocusOnError="True" ValidateEmptyText="True">*</asp:CustomValidator>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Date Birth"></asp:Label>
            <asp:TextBox ID="DateBirth" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="DateBirthValidator" runat="server" ControlToValidate="DateBirth" ErrorMessage="The date is out of range" ForeColor="Red" Type="Date" SetFocusOnError="True">*</asp:RangeValidator>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>

            <asp:DropDownList ID="Country" runat="server">
                <asp:ListItem>Morrocco</asp:ListItem>
                <asp:ListItem>U.S.A</asp:ListItem>
                <asp:ListItem>British</asp:ListItem>
                <asp:ListItem Selected="True">Select a country</asp:ListItem>
            </asp:DropDownList>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Country" ErrorMessage="You have to select a country" ForeColor="Red" InitialValue="Select a country" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </p>
        <p>
        </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <p>
            <asp:Button ID="Button1" runat="server" Text="Valider" />
        </p>
    </form>
</body>
</html>
