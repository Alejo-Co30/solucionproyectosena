<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="proyectosena.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/css/StyleSheettest.css" rel="stylesheet" type="text/css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="fondo">
    <header class="cabeza">
        <h2>BIENVENIDO</h2>
        <!--Imagen-->
    </header>
    <main>
        <section>
            <h2>INGRESE LA SIGUIENTE INFORMACIÓN</h2>
            <div class="infoemple">
                <ul>
                    <li>NOMBRE<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li>APELLIDO<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   </li>
                </ul>
                <ul>
                    <li>CARGO<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li>CORREO<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li>EDAD<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </li>
                </ul>
                <ul>
                    <li>TELEFONO<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </li>
                </ul>
                <asp:Button ID="btnin" runat="server" OnClick="Button1_Click1" Text="Ingresar" Width="169px" />
                <br />
                <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
            </div>
          </section>
        <section>
            <h2>TEST NUMERO 1</h2>
            <div class="idt">
                <ol>
                    <li>Pregunta 1 <asp:TextBox ID="txttest1" runat="server"></asp:TextBox>
                    </li>
                </ol>
                <ol>
                    <li>Pregunta 2 
                        <asp:TextBox ID="txttest2" runat="server"></asp:TextBox>
                    </li>
                </ol>
                <ol>
                    <li>Pregunta 3 
                        <asp:TextBox ID="txttest3" runat="server"></asp:TextBox>
                    </li>
                </ol>
                 <ol>
                    <li>Pregunta 4 
                        <asp:TextBox ID="txttest4" runat="server"></asp:TextBox>
                    </li>
                </ol>
                <ol>
                    <li>Pregunta 5 
                        <asp:TextBox ID="txttest5" runat="server"></asp:TextBox>
                    </li>
                </ol>
                <ol>
                    <li>Pregunta 6 
                        <asp:TextBox ID="txttest6" runat="server"></asp:TextBox>
                    </li>
                </ol>
                <ol>
                    <li>Pregunta 7 
                        <asp:TextBox ID="txttest7" runat="server"></asp:TextBox>
                    </li>
                </ol>
                <ol>
                    <li>Pregunta 8 
                        <asp:TextBox ID="txttest8" runat="server"></asp:TextBox>
                    </li>
                </ol>
                <asp:Button ID="button1" runat="server" Text="Ingresar" Width="176px" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label>
            </div>
        </section>
    </main>
    <footer>
        <div>
            <h2>RECOMENDACIONES</h2>
        </div>
        <div>
            <h2>RECOMENDACIONES</h2>
        </div>
    </footer>
    </div>
    </form>
</asp:Content>
