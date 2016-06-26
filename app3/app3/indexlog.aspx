<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio1.Master" AutoEventWireup="true" CodeBehind="indexlog.aspx.cs" Inherits="app3.indexlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Inicio" runat="server">
    <div id="latest">
    <div class="fl_left"><a href="#"><asp:Image ID="ImagenPrincipal" runat="server" ImageUrl="~/Style/images/575x330.jpg" /></a></div>
    <div class="fl_right">
                <h2><asp:HyperLink ID="TituloPrincipal" runat="server" ForeColor="#CCCCCC" NavigateUrl="~/noticias.aspx">[TituloPrincipal]</asp:HyperLink></h2>
                <p><asp:Label ID="TextoPrincipal" runat="server" Text="Label"></asp:Label></p>
    </div>
        
    <br class="clear" />
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contenido" runat="server">
    <div class="inicio2">
        <div class="contenidonoticia">
        <h1><asp:Label ID="Label6" runat="server" Text="Label">Noticias del día</asp:Label></h1>
        <div class="noticias">

        <h3><asp:Label ID="TituloNoticia1" runat="server" Text="Label">Noticia 1</asp:Label></h3>
        <asp:Image ID="ImagenNoticia1_1" runat="server" CssClass="imgr" ImageUrl="Style/images/imgr.gif" width="125" height="125" />
        <asp:Label ID="TextoNoticia1_1" runat="server" Text="Label">Aliquatjusto quisque nam consequat doloreet vest orna partur scetur portortis nam. Metadipiscing eget facilis elit sagittis felisi eger id justo maurisus convallicitur. &nbsp;Dapiensociis et curabitur condis lorem loborttis leo. Ipsumcommodo libero nunc at in velis tincidunt pellentum tincidunt vel lorem.</asp:Label>
        <asp:Image ID="ImagenNoticia1_2" runat="server" CssClass="imgl" ImageUrl="Style/images/imgl.gif" width="125" height="125" />
        <asp:Label ID="TextoNoticia1_2" runat="server" Text="Label">This is a W3C compliant free website template from Website Template Licence. You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit . Portortornec condimenterdum eget consectetuer condis consequam pretium pellus sed mauris enim. Puruselit mauris nulla hendimentesque elit semper nam a sapien urna sempus.</asp:Label>
            <br/>
            <br/>
            <br/>
        <p class="readmore"><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/noticias.aspx">Seguir leyendo &raquo;</asp:HyperLink></p>

        <br class="clear"/>
        </div>
        <div class="noticias">

        <h3><asp:Label ID="TituloNoticia2" runat="server" Text="Label">Noticia 2</asp:Label></h3>
        <asp:Image ID="ImagenNoticia2_1" runat="server" CssClass="imgr" ImageUrl="Style/images/imgr.gif" width="125" height="125" />
        <asp:Label ID="TextoNoticia2_1" runat="server" Text="Label">Aliquatjusto quisque nam consequat doloreet vest orna partur scetur portortis nam. Metadipiscing eget facilis elit sagittis felisi eger id justo maurisus convallicitur.
        This is a W3C compliant free website template from. This template is distributed using a Website Template Licence.
        You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visitates.</asp:Label>
         <br/>
             <br/>
            <br/>
        <asp:Label ID="TextoNoticia2_2" runat="server" Text="Label"> Portortornec condimenterdum eget consectetuer condis consequam pretium pellus sed mauris enim. Puruselit mauris nulla hendimentesque elit semper nam a sapien urna sempus.</asp:Label>
        <p class="readmore"><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/noticias.aspx">Seguir leyendo &raquo;</asp:HyperLink></p>

        <br class="clear"/>
        </div>
        <div class="noticias">

        <h3><asp:Label ID="TituloNoticia3" runat="server" Text="Label">Noticia 3</asp:Label></h3>
        <asp:Label ID="TextoNoticia3_1" runat="server" Text="Label">Aliquatjusto quisque nam consequat doloreet vest orna partur scetur portortis nam. Metadipiscing eget facilis elit sagittis felisi eger id justo maurisus convallicitur.</asp:Label>
        <br/>
        <asp:Image ID="ImagenNoticia3_1" runat="server" CssClass="imgl" ImageUrl="Style/images/imgl.gif" width="125" height="125" />
        <br/>
        <asp:Label ID="TextoNoticia3_2" runat="server" Text="Label">This is a W3C compliant free website template from 
        You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit
        Portortornec condimenterdum eget consectetuer condis consequam pretium pellus sed mauris enim. Puruselit mauris nulla hendimentesque elit semper nam a sapien urna sempus.</asp:Label>
        <br/>
        <br/>
        <br/>
        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/noticias.aspx" CssClass="readmore">Seguir leyendo &raquo;</asp:HyperLink>

        <br class="clear"/>
        </div>
        <div>

        <h3><asp:Label ID="TituloNoticia4" runat="server" Text="Label">Noticia 1</asp:Label></h3>
        <p><asp:Label ID="TextoNoticia4_1" runat="server" Text="Label">Aliquatjusto quisque nam consequat doloreet vest orna partur scetur portortis nam. Metadipiscing eget facilis elit sagittis felisi eger id justo maurisus convallicitur.</asp:Label></p>
        <p><asp:Label ID="TextoNoticia4_2" runat="server" Text="Label">This is a W3C compliant free website template from. This template is distributed using .</asp:Label></p>
        <br/>
        <br/>
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/noticias.aspx" CssClass="readmore">Seguir leyendo &raquo;</asp:HyperLink>

        <br class="clear"/>
        </div>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Navegalogin" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MejorComentarista" runat="server">
    <div class="holder">   
    <div class="contenidofila">
       <h2>Mejor Comentario de la Semana</h2>
         <ul id="latestnews">
          <li class="last"><asp:Image ID="ImagenMejorComentario" runat="server" CssClass="imgl" ImageUrl="Style/images/60x60.gif" />
            <p><strong>Tema:</strong><asp:Label ID="Label29" runat="server" Text="Label"> Indonectetus facilis leo nibh.</asp:Label></p>
            <p><asp:Label ID="Label30" runat="server" Text="Label">Nullamlacus dui ipsum cons eque loborttis non euis que morbi penas dapibulum orna.</asp:Label></p>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/noticias.aspx" CssClass="readmore">Seguir leyendo &raquo;</asp:HyperLink>
          </li>
        </ul>

    <br class="clear"/>
    <div class="lastnuevo">
      <h2>Significado del día</h2>  
      <p><asp:Label ID="TituloWikiSig" runat="server" Text="Label">Porno</asp:Label></p>
      <p><asp:Label ID="TextoWikiSig" runat="server" Text="Label"> La aparición de la World Wide Web se produjo el verdadero empujón a la distribución de pornografía en Internet, tanto gratuita como comercial. El surgimiento de sitios web ofreciendo fotografías de las temáticas más variadas imaginables, vídeos descargables y contenidos vía streaming, incluyendo cámaras webs en directo, permitieron un mayor acceso a la pornografía. Aunque inicialmente lo más habitual eran adaptaciones digitales de emporios pornográficos ampliamente asentados en el mercado, como Hustler, Playboy o Private, los contenidos exclusivos en línea y el aumento de interactividad con los usuarios fueron aumentando progresivamente</asp:Label></p>
    </div>
   </div>
        </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Medium" runat="server">
    

</asp:Content>