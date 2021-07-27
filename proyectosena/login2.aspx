<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="proyectosena.login2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style type="text/css">
        .auto-style1 {
            width: 142px;
        }
        .auto-style2 {
            width: 142px;
            height: 23px;
        text-align: center;
    }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 207px;
        width: 1209px;
        margin-top: 72px;
    }
    .auto-style5 {
        width: 38%;
        height: 118px;
        margin-left: 513px;
    }
    .auto-style6 {
        width: 142px;
        text-align: center;
    }
    .auto-style7 {
        background-color: #FFFFFF;
    }
    .auto-style8 {
        font-size: x-large;
    }
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server" class="auto-style4">
        <table class="auto-style5">
            <tr>
                <td class="auto-style2"><strong><span class="auto-style7">CÉDULA</span></strong></td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtcedula" runat="server" Width="139px" OnTextChanged="txtUsuario_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><span class="auto-style7">CLAVE</span></strong></td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtclave" runat="server" OnTextChanged="TextBox2_TextChanged" Width="139px"></asp:TextBox>
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
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style8"></asp:Label>
                    </strong>
                 </td>
            </tr>
        </table>
    </form>
</asp:Content>
