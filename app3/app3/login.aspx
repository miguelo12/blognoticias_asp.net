<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="app3.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Inicio" runat="server">
    <br class="clear"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contenido" runat="server">
    
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Navegalogin" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MejorComentarista" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Medium" runat="server">
    <div class="registrodiv">
        <h1><asp:Label ID="Label3" runat="server" Text="Login"></asp:Label></h1>
        <br />
        <table>
            <tr>
                <td> <asp:Label ID="Label1" runat="server" Text="Nombre de usuario: "></asp:Label> </td>
                <td> <asp:TextBox ID="TextBox2" runat="server" Width="150" Maxlength="50"></asp:TextBox></td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requiere que ingrese el usuario." ControlToValidate="TextBox2" Text="*" Display="Dynamic" ForeColor="#FE6363"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label2" runat="server" Text="Contraseña: "></asp:Label></td>
                <td> <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="150" Maxlength="50"></asp:TextBox></td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Requiere que ingrese la password." ControlToValidate="TextBox3" Text="*" Display="Dynamic" ForeColor="#FE6363"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="ErrorText" runat="server" ForeColor="#FE6363"></asp:Label><br/></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="Button2" runat="server" Text="Aceptar" CssClass="boton" Width="80" style="width: 100px; margin-left: 90px;" OnClick="Button2_Click"/></td>
            </tr>
        </table>
    </div>
</asp:Content>