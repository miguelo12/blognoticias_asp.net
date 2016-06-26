<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio1.Master" AutoEventWireup="true" CodeBehind="olvido.aspx.cs" Inherits="app3.olvidocon.olvido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Inicio" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Medium" runat="server">
    <div class="registrodiv">
     <h1><asp:Label ID="Label3" runat="server" Text="¿Olvido su contraseña?"></asp:Label></h1>
     <br />
       <p><asp:Label ID="Label2" runat="server" Text="Enviaremos un correo a su email para que verifique y cambie su constraseña."></asp:Label></p>
       <table>
            <tr>
                <td> <asp:Label ID="Label1" runat="server" Text="Email: "></asp:Label> </td>
                <td> <asp:TextBox ID="TextBox2" runat="server" Width="150" Maxlength="100"></asp:TextBox></td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requiere que ingrese el usuario." ControlToValidate="TextBox2" Text="*"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
                <td colspan="3"><asp:Button ID="Button2" runat="server" Text="Aceptar" CssClass="boton" Width="80" style="margin-left: 90px;"/></td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contenido" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Navegalogin" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="MejorComentarista" runat="server">
</asp:Content>
