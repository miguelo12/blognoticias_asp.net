<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio1.Master" AutoEventWireup="true" CodeBehind="noticias.aspx.cs" Inherits="app3.noticias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Inicio" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Medium" runat="server">
    <div>
      <h1><asp:Label ID="Titulo" runat="server" Text="Label">Aqui inserte su titulo!</asp:Label></h1>
      <br class="clear"/>
      <asp:Image ID="Image1" runat="server" width="125" height="125" CssClass="imgr" ImageUrl="~/Style/images/imgr.gif" />
        <br/>
      <p><asp:Label ID="Parrafo1" runat="server" Text="Label"> Aliquatjusto quisque nam consequat doloreet vest orna partur scetur portortis nam. Metadipiscing eget facilis elit sagittis felisi eger id justo maurisus convallicitur.
      Dapiensociis et curabitur condis lorem loborttis leo. Ipsumcommodo libero nunc at in velis tincidunt pellentum tincidunt vel lorem. This is a W3C compliant free website template from. This template is distributed using a.
      You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit.
      Portortornec condimenterdum eget consectetuer condis consequam pretium pellus sed mauris enim. Puruselit mauris nulla hendimentesque elit semper nam a sapien urna sempus.</asp:Label> 
        </p><br/><br/>
      <asp:Image ID="Image2" runat="server" width="125" height="125" CssClass="imgl" ImageUrl="~/Style/images/imgl.gif" />
      <p><asp:Label ID="Parrafo2" runat="server" Text="Label"> Aliquatjusto quisque nam consequat doloreet vest orna partur scetur portortis nam. Metadipiscing eget facilis elit sagittis felisi eger id justo maurisus convallicitur.
      Dapiensociis et curabitur condis lorem loborttis leo. Ipsumcommodo libero nunc at in velis tincidunt pellentum tincidunt vel lorem. This is a W3C compliant free website template from. This template is distributed using a.
      You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit.
      Portortornec condimenterdum eget consectetuer condis consequam pretium pellus sed mauris enim. Puruselit mauris nulla hendimentesque elit semper nam a sapien urna sempus.</asp:Label> 
      </p><br/>
      <br class="clear"/>
      <br class="clear"/>

      <div id="comments">
        <h2>Comentarios</h2>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <ul class="commentlist">
                    <li class="comment_odd">
                    <div class="author"><asp:Image ID="Image3" runat="server" width="32" height="32" ImageUrl="~/Style/images/avatar.gif" CssClass="avatar" />
                    <span class="name"><asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("nombre") %>'/></span> <span class="Escribio">Escribio:</span></div>
                    <div class="submitdate"><asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("fecha") %>'/></div>
                    <p><asp:Label ID="Label2" runat="server" Text='<%# Eval("textocomentario") %>'/></p>
                    <li/>
                </ul>
            </ItemTemplate>
        </asp:Repeater>

      </div>
      <br class="clear"/>
      <br class="clear"/>
      <h2>Escribe un Comentario</h2>
      <div id="respond">
          <p>
            <!--Anonimo-->
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <label for="name"><small>Nombre (Requiere)</small></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Esta vacio, ingrese un nombre." ForeColor="#FE6363" Text="*" Display="Dynamic" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
          </p>
          <p>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <label for="email"><small>Email (Requiere no se mostrara.)</small></label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email esta vacio." ForeColor="#FE6363" Text="*" Display="Dynamic" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="No es el formato permitido." ForeColor="#FE6363" Text="*" Display="Dynamic" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
          </p>
          <p>
            <asp:TextBox ID="TextBox1" runat="server" Rows="10" Height="200" Width="100%" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="#FE6363" Text="*"></asp:RequiredFieldValidator>
          </p>
          <p>
            <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Limpiar" OnClick="Button2_Click" />
          </p>
      </div>
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
