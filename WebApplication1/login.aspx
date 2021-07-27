<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="proyectosena.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" class="auto-style4">
        <table style="width: 30%;">
            <tr>
                <td class="auto-style2">CEDULA</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtcedula" runat="server" Width="139px" OnTextChanged="txtUsuario_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Clave</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtclave" runat="server" OnTextChanged="TextBox2_TextChanged" Width="139px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Borrar" OnClick="Borrar" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Ingresar" OnClick="Ingresar" />
                </td>
            </tr>
             <tr>
                <td class="auto-style1">&nbsp;</td>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 </td>
            </tr>
        </table>
    </form>
</asp:Content>
