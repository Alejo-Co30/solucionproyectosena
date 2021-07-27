<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="migestion.aspx.cs" Inherits="proyectosena.migestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 131px;
            margin-right: 189px;
            height: 937px;
            width: 1360px;
            margin-top: 0px;
        }
        .auto-style3 {
            width: 870px;
            margin-left: 378px;
        }
        .auto-style4 {
            width: 870px;
            margin-left: 379px;
        }
        .auto-style5 {
            width: 872px;
            margin-left: 379px;
        }
        .auto-style6 {
            width: 867px;
            margin-left: 382px;
        }
        .auto-style7 {
            width: 398px;
            margin-left: 753px;
        }
        .auto-style8 {
            width: 457px;
            text-align: center;
            margin-left: 242px;
        }
        .auto-style9 {
            margin-left: 103px;
        }
        .auto-style10 {
            margin-top: 9px;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            height: 605px;
        }
        .auto-style14 {
            width: 1262px;
            height: 38px;
            margin-left: 438px;
            text-align: justify;
            margin-bottom: 0px;
        }
        .auto-style15 {
            width: 1354px;
            margin-left: 86px;
        }
        .auto-style16 {
            text-align: center;
            margin-left: 172px;
        }
        .auto-style17 {
            height: 161px;
            margin-left: 307px;
        }
        .auto-style18 {
            margin-left: 137px;
        }
    </style>


    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server" class="auto-style2">

    <header class="auto-style14">
        <a href="admini.aspx">REGRESAR</a>
    </header>
    <main>
        <section>
            <h1 class="auto-style15">RECUERDE INGRESAR SUS DATOS Y ACTUALIZARLOS PERIODICAMENTE</h1>
        </section>
        <div>
            <ul>
                <li class="auto-style6"><strong>NOMBRE&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="380px"></asp:TextBox>
                </li>
            </ul>
            <ul>
                <li class="auto-style5"><strong>APELLIDO</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="375px"></asp:TextBox>
                </li>
            </ul>
            <ul>
                <li class="auto-style5"><strong>CÉDULA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Width="371px"></asp:TextBox>
                    </strong>
                </li>
            </ul>
            <ul>
                <li class="auto-style4"><strong>CARGO&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Width="371px"></asp:TextBox>
                </li>
            </ul>
             <ul>
                <li class="auto-style3"><strong>CORREO CORPORATIVO&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Width="258px"></asp:TextBox>
                </li>
            </ul>
            
            <div class="auto-style7">
            <asp:Button ID="Button1" runat="server" Text="Registrar" Width="121px" OnClick="Button1_Click" />
            <br />
                <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style12"></asp:Label>
                </strong>
            <br />
            <br />
            </div>
        </div>
        <section><h2 class="auto-style8">REPORTE DE RESULTADOS</h2>
            <div class="auto-style9">
                <div>
                <span class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I</strong></span><span><span class="auto-style12"><strong>ngrese la cédula del participante </strong></span>&nbsp;&nbsp; <asp:TextBox ID="CEDULA" runat="server" CssClass="auto-style10" Width="190px"></asp:TextBox>
                </span>
                &nbsp;<br />
                </div>
                <div class="auto-style13"> 
                    <br />
                    <div class="auto-style16">
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="registroem" DataSourceID="SqlDataSource1" Height="16px" Width="811px" CssClass="auto-style18">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="registroem" HeaderText="registroem" InsertVisible="False" ReadOnly="True" SortExpression="registroem" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                                <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
                                <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                                <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                                <asp:BoundField DataField="cedula" HeaderText="cedula" SortExpression="cedula" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cmhumanConnectionString %>" DeleteCommand="DELETE FROM [registroem] WHERE [registroem] = @original_registroem AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([apellido] = @original_apellido) OR ([apellido] IS NULL AND @original_apellido IS NULL)) AND (([cargo] = @original_cargo) OR ([cargo] IS NULL AND @original_cargo IS NULL)) AND (([correo] = @original_correo) OR ([correo] IS NULL AND @original_correo IS NULL)) AND (([edad] = @original_edad) OR ([edad] IS NULL AND @original_edad IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([cedula] = @original_cedula) OR ([cedula] IS NULL AND @original_cedula IS NULL))" InsertCommand="INSERT INTO [registroem] ([nombre], [apellido], [cargo], [correo], [edad], [telefono], [cedula]) VALUES (@nombre, @apellido, @cargo, @correo, @edad, @telefono, @cedula)" SelectCommand="SELECT [registroem], [nombre], [apellido], [cargo], [correo], [edad], [telefono], [cedula] FROM [registroem] WHERE ([cedula] = @cedula)" UpdateCommand="UPDATE [registroem] SET [nombre] = @nombre, [apellido] = @apellido, [cargo] = @cargo, [correo] = @correo, [edad] = @edad, [telefono] = @telefono, [cedula] = @cedula WHERE [registroem] = @original_registroem AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([apellido] = @original_apellido) OR ([apellido] IS NULL AND @original_apellido IS NULL)) AND (([cargo] = @original_cargo) OR ([cargo] IS NULL AND @original_cargo IS NULL)) AND (([correo] = @original_correo) OR ([correo] IS NULL AND @original_correo IS NULL)) AND (([edad] = @original_edad) OR ([edad] IS NULL AND @original_edad IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([cedula] = @original_cedula) OR ([cedula] IS NULL AND @original_cedula IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                        <DeleteParameters>
                            <asp:Parameter Name="original_registroem" Type="Int32" />
                            <asp:Parameter Name="original_nombre" Type="String" />
                            <asp:Parameter Name="original_apellido" Type="String" />
                            <asp:Parameter Name="original_cargo" Type="String" />
                            <asp:Parameter Name="original_correo" Type="String" />
                            <asp:Parameter Name="original_edad" Type="Int32" />
                            <asp:Parameter Name="original_telefono" Type="String" />
                            <asp:Parameter Name="original_cedula" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="nombre" Type="String" />
                            <asp:Parameter Name="apellido" Type="String" />
                            <asp:Parameter Name="cargo" Type="String" />
                            <asp:Parameter Name="correo" Type="String" />
                            <asp:Parameter Name="edad" Type="Int32" />
                            <asp:Parameter Name="telefono" Type="String" />
                            <asp:Parameter Name="cedula" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="CEDULA" Name="cedula" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nombre" Type="String" />
                            <asp:Parameter Name="apellido" Type="String" />
                            <asp:Parameter Name="cargo" Type="String" />
                            <asp:Parameter Name="correo" Type="String" />
                            <asp:Parameter Name="edad" Type="Int32" />
                            <asp:Parameter Name="telefono" Type="String" />
                            <asp:Parameter Name="cedula" Type="Int32" />
                            <asp:Parameter Name="original_registroem" Type="Int32" />
                            <asp:Parameter Name="original_nombre" Type="String" />
                            <asp:Parameter Name="original_apellido" Type="String" />
                            <asp:Parameter Name="original_cargo" Type="String" />
                            <asp:Parameter Name="original_correo" Type="String" />
                            <asp:Parameter Name="original_edad" Type="Int32" />
                            <asp:Parameter Name="original_telefono" Type="String" />
                            <asp:Parameter Name="original_cedula" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <span class="auto-style11">&nbsp;&nbsp;&nbsp; </span><span class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resultados:</strong></span><br />
                    <div class="auto-style1">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idtestemple" DataSourceID="SqlDataSource2" Width="813px" CssClass="auto-style17" AllowSorting="True">
                            <Columns>
                                <asp:BoundField DataField="idtestemple" HeaderText="idtestemple" InsertVisible="False" ReadOnly="True" SortExpression="idtestemple" />
                                <asp:BoundField DataField="prg1" HeaderText="prg1" SortExpression="prg1" />
                                <asp:BoundField DataField="prg2" HeaderText="prg2" SortExpression="prg2" />
                                <asp:BoundField DataField="prg3" HeaderText="prg3" SortExpression="prg3" />
                                <asp:BoundField DataField="prg4" HeaderText="prg4" SortExpression="prg4" />
                                <asp:BoundField DataField="prg5" HeaderText="prg5" SortExpression="prg5" />
                                <asp:BoundField DataField="prg6" HeaderText="prg6" SortExpression="prg6" />
                                <asp:BoundField DataField="prg7" HeaderText="prg7" SortExpression="prg7" />
                                <asp:BoundField DataField="prg8" HeaderText="prg8" SortExpression="prg8" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cmhumanConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [idtestemple] = @original_idtestemple AND (([prg1] = @original_prg1) OR ([prg1] IS NULL AND @original_prg1 IS NULL)) AND (([prg2] = @original_prg2) OR ([prg2] IS NULL AND @original_prg2 IS NULL)) AND (([prg3] = @original_prg3) OR ([prg3] IS NULL AND @original_prg3 IS NULL)) AND (([prg4] = @original_prg4) OR ([prg4] IS NULL AND @original_prg4 IS NULL)) AND (([prg5] = @original_prg5) OR ([prg5] IS NULL AND @original_prg5 IS NULL)) AND (([prg6] = @original_prg6) OR ([prg6] IS NULL AND @original_prg6 IS NULL)) AND (([prg7] = @original_prg7) OR ([prg7] IS NULL AND @original_prg7 IS NULL)) AND (([prg8] = @original_prg8) OR ([prg8] IS NULL AND @original_prg8 IS NULL))" InsertCommand="INSERT INTO [test] ([prg1], [prg2], [prg3], [prg4], [prg5], [prg6], [prg7], [prg8]) VALUES (@prg1, @prg2, @prg3, @prg4, @prg5, @prg6, @prg7, @prg8)" SelectCommand="SELECT [idtestemple], [prg1], [prg2], [prg3], [prg4], [prg5], [prg6], [prg7], [prg8] FROM [test] WHERE ([idtestemple] = @idtestemple)" UpdateCommand="UPDATE [test] SET [prg1] = @prg1, [prg2] = @prg2, [prg3] = @prg3, [prg4] = @prg4, [prg5] = @prg5, [prg6] = @prg6, [prg7] = @prg7, [prg8] = @prg8 WHERE [idtestemple] = @original_idtestemple AND (([prg1] = @original_prg1) OR ([prg1] IS NULL AND @original_prg1 IS NULL)) AND (([prg2] = @original_prg2) OR ([prg2] IS NULL AND @original_prg2 IS NULL)) AND (([prg3] = @original_prg3) OR ([prg3] IS NULL AND @original_prg3 IS NULL)) AND (([prg4] = @original_prg4) OR ([prg4] IS NULL AND @original_prg4 IS NULL)) AND (([prg5] = @original_prg5) OR ([prg5] IS NULL AND @original_prg5 IS NULL)) AND (([prg6] = @original_prg6) OR ([prg6] IS NULL AND @original_prg6 IS NULL)) AND (([prg7] = @original_prg7) OR ([prg7] IS NULL AND @original_prg7 IS NULL)) AND (([prg8] = @original_prg8) OR ([prg8] IS NULL AND @original_prg8 IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                        <DeleteParameters>
                            <asp:Parameter Name="original_idtestemple" Type="Int32" />
                            <asp:Parameter Name="original_prg1" Type="String" />
                            <asp:Parameter Name="original_prg2" Type="String" />
                            <asp:Parameter Name="original_prg3" Type="String" />
                            <asp:Parameter Name="original_prg4" Type="String" />
                            <asp:Parameter Name="original_prg5" Type="String" />
                            <asp:Parameter Name="original_prg6" Type="String" />
                            <asp:Parameter Name="original_prg7" Type="String" />
                            <asp:Parameter Name="original_prg8" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="prg1" Type="String" />
                            <asp:Parameter Name="prg2" Type="String" />
                            <asp:Parameter Name="prg3" Type="String" />
                            <asp:Parameter Name="prg4" Type="String" />
                            <asp:Parameter Name="prg5" Type="String" />
                            <asp:Parameter Name="prg6" Type="String" />
                            <asp:Parameter Name="prg7" Type="String" />
                            <asp:Parameter Name="prg8" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="idtestemple" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="prg1" Type="String" />
                            <asp:Parameter Name="prg2" Type="String" />
                            <asp:Parameter Name="prg3" Type="String" />
                            <asp:Parameter Name="prg4" Type="String" />
                            <asp:Parameter Name="prg5" Type="String" />
                            <asp:Parameter Name="prg6" Type="String" />
                            <asp:Parameter Name="prg7" Type="String" />
                            <asp:Parameter Name="prg8" Type="String" />
                            <asp:Parameter Name="original_idtestemple" Type="Int32" />
                            <asp:Parameter Name="original_prg1" Type="String" />
                            <asp:Parameter Name="original_prg2" Type="String" />
                            <asp:Parameter Name="original_prg3" Type="String" />
                            <asp:Parameter Name="original_prg4" Type="String" />
                            <asp:Parameter Name="original_prg5" Type="String" />
                            <asp:Parameter Name="original_prg6" Type="String" />
                            <asp:Parameter Name="original_prg7" Type="String" />
                            <asp:Parameter Name="original_prg8" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
        </section>
    </main>
    <footer>

    </footer>
    </form>
</asp:Content>
