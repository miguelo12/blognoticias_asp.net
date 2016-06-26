<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio1.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="app3.perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Inicio" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Medium" runat="server">
    <div class="tabla1">
    <br/>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="68px" Width="125px" AutoGenerateRows="False" DataKeyNames="idUsuario" DataSourceID="ObjectDataSource1">
        <Fields>
            <asp:BoundField DataField="idUsuario" HeaderText="Usuario" ReadOnly="True" SortExpression="idUsuario" />
            <asp:BoundField DataField="direccion" HeaderText="Direccion" SortExpression="direccion" />
            <asp:BoundField DataField="sexo" HeaderText="Sexo" SortExpression="sexo" />
            <asp:BoundField DataField="pais" HeaderText="Pais" SortExpression="pais" />
            <asp:BoundField DataField="telefono" HeaderText="Telefono" SortExpression="telefono" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Eliminar" InsertMethod="GuardarUsuario" OldValuesParameterFormatString="original_{0}" SelectMethod="BuscarUsuario" TypeName="Users.Usuarios" UpdateMethod="ModificarUsusario">
        <DeleteParameters>
            <asp:Parameter Name="original_idUsuario" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idUsuario" Type="String" />
            <asp:Parameter Name="Contrasena" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="idUsuario" SessionField="user" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="sexo" Type="String" />
            <asp:Parameter Name="pais" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
            <asp:Parameter Name="original_idUsuario" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    </div>
    <br/>
    <br/>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br/>
    <br/>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <br/>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contenido" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Navegalogin" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="MejorComentarista" runat="server">
</asp:Content>
