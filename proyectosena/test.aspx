<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="proyectosena.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/css/StyleSheettest.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style2 {
            font-weight: normal;
        }
        .auto-style3 {
            width: 799px;
            margin-left: 191px;
            text-align: center;
        }
        .auto-style4 {
            width: 365px;
            text-align: center;
            margin-left: 140px;
        }
        .auto-style5 {
            width: 371px;
            text-align: center;
            margin-left: 139px;
        }
        .auto-style7 {
            width: 364px;
            text-align: center;
            margin-left: 140px;
        }
        .auto-style8 {
            width: 267px;
            text-align: center;
            margin-left: 140px;
        }
        .auto-style9 {
            width: 385px;
            text-align: center;
            margin-left: 139px;
        }
        .auto-style10 {
            margin-left: 436px;
        }
        .auto-style11 {
            width: 697px;
            margin-left: 302px;
            text-align: center;
        }
        .auto-style12 {
            width: 797px;
            margin-left: 262px;
            text-align: center;
        }
        .auto-style13 {
            margin-left: 460px;
        }
        .auto-style14 {
            width: 1419px;
            margin-left: 40px;
            height: 1140px;
            margin-right: 63px;
            margin-top: 0px;
        }
        .auto-style15 {
            width: 784px;
            margin-left: 176px;
        }
        .auto-style16 {
            width: 787px;
            margin-left: 174px;
        }
        .auto-style18 {
            width: 788px;
            margin-left: 174px;
        }
        .auto-style19 {
            width: 788px;
            margin-left: 173px;
        }
        .auto-style20 {
            width: 787px;
            margin-left: 173px;
        }
        .auto-style21 {
            width: 791px;
            margin-left: 173px;
        }
        .auto-style22 {
            width: 1389px;
            height: 163px;
            margin-left: 22px;
            margin-bottom: 0px;
        }
        .auto-style23 {
            width: 621px;
            margin-left: 306px;
            text-align: center;
        }
        .auto-style24 {
            width: 735px;
            margin-left: 286px;
            text-align: center;
        }
        .auto-style25 {
            font-size: x-large;
        }
        .auto-style26 {
            width: 790px;
            margin-left: 172px;
        }
        .auto-style27 {
            width: 371px;
            text-align: center;
            margin-left: 141px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" class="auto-style14">
    <div class="fondo">
    <header class="cabeza">
        <h1 class="auto-style2">BIENVENIDO</h1>
        <!--Imagen-->
    </header>
    <main>
        <section>
            <h2 class="auto-style3">INGRESE LA SIGUIENTE INFORMACIÓN</h2>
            <div class="infoemple">
                <ul>
                    <li class="auto-style4">NOMBRE&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="242px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style5">APELLIDO&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="242px"></asp:TextBox>
                   </li>
                </ul>
                 <ul>
                    <li class="auto-style27">CÉDULA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Width="245px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style27">CARGO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Width="245px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style7">CORREO&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Width="233px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style8">EDAD&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" Width="137px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style9">TELEFONO&nbsp; <asp:TextBox ID="TextBox7" runat="server" Width="251px"></asp:TextBox>
                    </li>
                </ul>
                <asp:Button ID="btnin" runat="server" OnClick="Button1_Click1" Text="Ingresar" Width="169px" CssClass="auto-style10" />
                <br />
               <p class="auto-style23"> <strong> <asp:Label ID="lbl1" runat="server" CssClass="auto-style25"></asp:Label>
                   </strong></p>
            </div>
          </section>
        <section>
            <h2 class="auto-style11">PRUEBA DE MOTIVACIONES Y DESEOS</h2>
            <div class="idt">
                <ul>
                    <li class="auto-style15"><span>Mencione uno de sus intereses.&nbsp;&nbsp;&nbsp; </span><asp:TextBox ID="txttest1" runat="server" Width="509px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style16"><span>Mencione un objetivo a largo plazo.&nbsp; </span><asp:TextBox ID="txttest2" runat="server" Width="492px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style16"><span>Le gusta el área en el que se encuentra.&nbsp;&nbsp; </span><asp:TextBox ID="txttest3" runat="server" Width="464px"></asp:TextBox>
                    </li>
                </ul>
                 <ul>
                    <li class="auto-style18"><span>Le gustaría ser parte de un programa de capacitación.&nbsp;&nbsp; </span><asp:TextBox ID="txttest4" runat="server" Width="376px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style19"><span>Se siente conforme con su puesto.&nbsp;&nbsp; </span><asp:TextBox ID="txttest5" runat="server" Width="493px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style20"><span>Conoce la misión y la visión de la compañia.&nbsp;&nbsp; </span><asp:TextBox ID="txttest6" runat="server" Width="432px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style26"><span>Se siente satisfecho con los beneficios que brinda la compañia.&nbsp;&nbsp; </span><asp:TextBox ID="txttest7" runat="server" Width="327px"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li class="auto-style21"><span>Le gustaría cambiar el ambiente laboral, en su área.&nbsp;&nbsp; </span><asp:TextBox ID="txttest8" runat="server" Width="394px"></asp:TextBox>
                    </li>
                </ul>
                <p class="auto-style24"><strong><asp:Label ID="lbl2" runat="server" CssClass="auto-style25"></asp:Label></strong></p>
                <asp:Button ID="button1" runat="server" Text="Ingresar" Width="169px" OnClick="Button1_Click" CssClass="auto-style13" />
                <br />
            </div>
        </section>
    </main>
    <footer>
        <div>
            <h2 class="auto-style12">RECOMENDACIONES</h2>
            <div><p class="auto-style22">La base de todas las organizaciones está en esencia, relacionadas con su actividad económica y con la prestación de un servicio, pero qué nutre y permite cumplir dicha actividad; sí, estamos hablando del capital humano, una estructura activa que representa la capacidad que puede tener una organización. Dentro de los parámetros establecidos por la industria económica, el capital humano comprende a la mano de obra, que directa o indirectamente recibe una remuneración por las funciones que cumple o por su tiempo laborando en algún puesto en concreto.

Pero con el pasar del tiempo, las organizaciones lograron de forma burda, alinear los objetivos empresariales con las capacidades y motivaciones del personal, y reconocieron a ese elemento humano, que destaca por su experiencia, su estudio y su desempeño, ya que es importante recordar que cada elemento tiene un motivo, posee un objetivo y que su perfil laboral puede ser el más idóneo en algún puesto en especial. Pero esta importancia fue mermando y quedando relegada como otra función de poca transcendencia dentro de la gestión del recurso humano y por ende el seguimiento a ese elemento idóneo se perdió.

Pero gracias a la sistematización de actividades y a la implementación de sistemas de información, está función puede ser abarcada en cualquier organización de mediana y gran capacidad, donde los enfoques de sus estrategias pueden tomar en cuenta los objetivos del capital humano y donde se puede hacer seguimiento a los elementos más competentes para dichas acciones.
</p></div>
        
        </div>
    </footer>
    </div>
    </form>
</asp:Content>
