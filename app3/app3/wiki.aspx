<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio1.Master" AutoEventWireup="true" CodeBehind="wiki.aspx.cs" Inherits="app3.wiki" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Inicio" runat="server">
  <br class="clear"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Medium" runat="server">
    <div id="Wikicolum">
      <div class="subnav">
         <ul>
            <li class="last">
                <p class="readmore"><a href="#">Inicio</a></p>
            </li>
            <li>
                <p class="readmore"><a href="#">Diccionario</a></p>
            </li>
          </ul>
      </div>
    </div>
    <div id="Wikicontent">
      <div>
          <h1>Bienvenido a la WikiCompu</h1>
          <div style="text-align:center">
              <p>Encontraras todo tipo de información aquí</p>
          </div>
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