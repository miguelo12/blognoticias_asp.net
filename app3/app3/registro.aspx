<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio1.Master" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="app3.registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Inicio" runat="server">
    <br class="clear"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contenido" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Navegalogin" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MejorComentarista" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Medium" runat="server">
    <h1>Registro</h1>
    <div class="tabla">
     <br/>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idUsuario" DataSourceID="ObjectDataSource">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idUsuario" HeaderText="Usuario" ReadOnly="True" SortExpression="idUsuario" />
                <asp:BoundField DataField="direccion" HeaderText="Direccion" SortExpression="direccion" />
                <asp:BoundField DataField="sexo" HeaderText="Sexo" SortExpression="sexo" />
                <asp:BoundField DataField="pais" HeaderText="Pais" SortExpression="pais" />
                <asp:BoundField DataField="telefono" HeaderText="Telefono" SortExpression="telefono" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            </Columns>
        </asp:GridView>
       
        <asp:ObjectDataSource ID="ObjectDataSource" runat="server" DeleteMethod="Eliminar" InsertMethod="GuardarUsuario" OldValuesParameterFormatString="original_{0}" SelectMethod="TraerTodo" TypeName="Users.Usuarios" UpdateMethod="ModificarUsusario">
            <DeleteParameters>
                <asp:Parameter Name="original_idUsuario" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idUsuario" Type="String" />
                <asp:Parameter Name="Contrasena" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="original_idUsuario" Type="String" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="sexo" Type="String" />
                <asp:Parameter Name="pais" Type="String" />
                <asp:Parameter Name="telefono" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
       
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="idUsuario" DataSourceID="ObjectDataSource" DefaultMode="Insert" BackColor="#181d23">
            <Fields>
                <asp:BoundField DataField="idUsuario" HeaderText="Usuario" ReadOnly="True" SortExpression="idUsuario" />
                <asp:BoundField DataField="Contrasena" HeaderText="Contraseña" SortExpression="Contrasena" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        
       <br/> 
       <br/>
       <br/>
       <br/>
       <br/>
       <br/>
     <br/>
       <br/>
       <br class="clear"/>
       </div>
</asp:Content>