<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="proyectosena.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     

    
    <style type="text/css">
        .auto-style1 {
            width: 1208px;
        }
        .auto-style2 {
            width: 1208px;
            text-align: center;
            margin-left: 202px;
            font-size: large;
        }
        .auto-style3 {
            width: 1011px;
            margin-left: 202px;
        }
        .auto-style4 {
            width: 863px;
            height: 226px;
            margin-left: 460px;
            margin-top: 70px;
            margin-bottom: 77px;
        }
        .auto-style5 {
            width: 53%;
            height: 113px;
        }
        .auto-style6 {
            width: 1208px;
            text-align: center;
            font-size: large;
        }
        .auto-style7 {
            font-size: x-large;
        }
    </style>
    
     

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" class="auto-style4">
        <table class="auto-style5">
            <tr>
                <td class="auto-style2"><strong>CÉDULA</strong></td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtcedula" runat="server" Width="174px" OnTextChanged="txtUsuario_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>CLAVE</strong></td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtclave" runat="server" OnTextChanged="TextBox2_TextChanged" Width="175px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Ingresar" OnClick="Ingresar" />
                </td>
            </tr>
             <tr>
                <td class="auto-style1">&nbsp;</td>
                <td></td>
                <td>
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style7"></asp:Label>
                    </strong>
                 </td>
            </tr>
        </table>
    </form>
</asp:Content>
