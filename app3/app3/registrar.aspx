<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio1.Master" AutoEventWireup="true" CodeBehind="registrar.aspx.cs" Inherits="app3.registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Inicio" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Medium" runat="server">
    <div class="registrodiv">
        <h1><asp:Label ID="Label5" runat="server" Text="Registro"></asp:Label></h1>
        <br />
        <table class="tablaregistro">
            <tr>
                <td> <asp:Label ID="Label1" runat="server" Text="Nombre del Usuario: "></asp:Label>  </td>
                <td> <asp:TextBox ID="txtNombre" runat="server" Width="150" Maxlength="20"></asp:TextBox> </td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Usuario no ingresado" Text="*" ControlToValidate="txtNombre" Display="Dynamic" ForeColor="#FE6363"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label2" runat="server" Text="Correo: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtCorreo" runat="server" Width="150" Maxlength="50"></asp:TextBox>  </td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email no ingresado" ControlToValidate="txtCorreo" Text="*" Display="Dynamic" ForeColor="#FE6363"></asp:RequiredFieldValidator></td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Formato del email es invalido" ControlToValidate="txtCorreo" Text="*" Display="Dynamic" ForeColor="#FE6363"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label3" runat="server" Text="Contraseña: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtCon" runat="server" TextMode="Password" Width="150" Maxlength="20"></asp:TextBox> </td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password no ingresado" ControlToValidate="txtCon" Text="*" Display="Dynamic" ForeColor="#FE6363"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label4" runat="server" Text="Confirmar Contraseña: "></asp:Label> </td>
                <td> <asp:TextBox ID="txtCon2" runat="server" TextMode="Password" Width="150" Maxlength="20"></asp:TextBox> </td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="La segunda contraseña esta en blanco." Text="*" ControlToValidate="txtCon2" Display="Dynamic" ForeColor="#FE6363"></asp:RequiredFieldValidator></td>
                <td> <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="La password no son iguales a la primera." Text="*" ControlToValidate="txtCon2" ControlToCompare="txtCon" Display="Dynamic" ForeColor="#FE6363"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center"> <asp:Label ID="Errorlabel" runat="server" Text="" ForeColor="#FE6363"></asp:Label><br/></td>
            </tr>
            <tr>
                <td colspan="2">  <asp:Button ID="Button1" runat="server" Text="Aceptar" CssClass="boton" style="width: 100px; margin-left: 90px;" OnClick="Button1_Click" /> </td>
            </tr>
        </table>
       <br/>
       <br/>
       <br class="clear" />
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
