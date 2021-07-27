<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="Gestion.aspx.cs" Inherits="proyectosena.Gestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 785px;
            height: 22px;
            margin-left: 195px;
            font-size: large;
        }
        .auto-style2 {
            width: 779px;
            margin-left: 190px;
        }
        .auto-style3 {
            width: 1027px;
            margin-left: 190px;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            width: 1000px;
            margin-left: 196px;
        }
        .auto-style6 {
            margin-left: 194px;
        }
        .auto-style7 {
            width: 996px;
            margin-left: 194px;
        }
        .auto-style8 {
            margin-left: 306px;
        }
        .auto-style9 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" class="auto-style8">
    <header>
        <div class="auto-style1"><a href="admini.aspx">REGRESAR</a></div>
    </header>
    <main>
        <section>
            <h2 class="auto-style2">BUSQUEDA Y ACTUALIZACIÓN</h2>
            <p class="auto-style7">&nbsp;</p>

            <h2 class="auto-style3">Busquedad especifica</h2>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4"><strong>Ingrese el número de cédula a modificar&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><asp:TextBox ID="Bespecifica" runat="server" Width="215px"></asp:TextBox>
            
            <div class="auto-style5">
            
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="registroem" Width="732px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="registroem" HeaderText="registroem" InsertVisible="False" ReadOnly="True" SortExpression="registroem" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                        <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
                        <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                        <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                        <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cmhumanConnectionString %>" DeleteCommand="DELETE FROM [registroem] WHERE [registroem] = @original_registroem AND (([cedula] = @original_cedula) OR ([cedula] IS NULL AND @original_cedula IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([edad] = @original_edad) OR ([edad] IS NULL AND @original_edad IS NULL)) AND (([correo] = @original_correo) OR ([correo] IS NULL AND @original_correo IS NULL)) AND (([cargo] = @original_cargo) OR ([cargo] IS NULL AND @original_cargo IS NULL)) AND (([apellido] = @original_apellido) OR ([apellido] IS NULL AND @original_apellido IS NULL)) AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL))" InsertCommand="INSERT INTO [registroem] ([cedula], [telefono], [edad], [correo], [cargo], [apellido], [nombre]) VALUES (@cedula, @telefono, @edad, @correo, @cargo, @apellido, @nombre)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [cedula], [telefono], [edad], [correo], [cargo], [apellido], [nombre], [registroem] FROM [registroem] WHERE ([cedula] = @cedula)" UpdateCommand="UPDATE [registroem] SET [cedula] = @cedula, [telefono] = @telefono, [edad] = @edad, [correo] = @correo, [cargo] = @cargo, [apellido] = @apellido, [nombre] = @nombre WHERE [registroem] = @original_registroem AND (([cedula] = @original_cedula) OR ([cedula] IS NULL AND @original_cedula IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([edad] = @original_edad) OR ([edad] IS NULL AND @original_edad IS NULL)) AND (([correo] = @original_correo) OR ([correo] IS NULL AND @original_correo IS NULL)) AND (([cargo] = @original_cargo) OR ([cargo] IS NULL AND @original_cargo IS NULL)) AND (([apellido] = @original_apellido) OR ([apellido] IS NULL AND @original_apellido IS NULL)) AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_registroem" Type="Int32" />
                        <asp:Parameter Name="original_cedula" Type="Int32" />
                        <asp:Parameter Name="original_telefono" Type="String" />
                        <asp:Parameter Name="original_edad" Type="Int32" />
                        <asp:Parameter Name="original_correo" Type="String" />
                        <asp:Parameter Name="original_cargo" Type="String" />
                        <asp:Parameter Name="original_apellido" Type="String" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cedula" Type="Int32" />
                        <asp:Parameter Name="telefono" Type="String" />
                        <asp:Parameter Name="edad" Type="Int32" />
                        <asp:Parameter Name="correo" Type="String" />
                        <asp:Parameter Name="cargo" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="nombre" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Bespecifica" Name="cedula" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cedula" Type="Int32" />
                        <asp:Parameter Name="telefono" Type="String" />
                        <asp:Parameter Name="edad" Type="Int32" />
                        <asp:Parameter Name="correo" Type="String" />
                        <asp:Parameter Name="cargo" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="original_registroem" Type="Int32" />
                        <asp:Parameter Name="original_cedula" Type="Int32" />
                        <asp:Parameter Name="original_telefono" Type="String" />
                        <asp:Parameter Name="original_edad" Type="Int32" />
                        <asp:Parameter Name="original_correo" Type="String" />
                        <asp:Parameter Name="original_cargo" Type="String" />
                        <asp:Parameter Name="original_apellido" Type="String" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
            <div>
                <br />
                <div class="auto-style9">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="registroad" DataSourceID="SqlDataSource2" Width="729px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style6">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="registroad" HeaderText="registroad" InsertVisible="False" ReadOnly="True" SortExpression="registroad" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                        <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
                        <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cmhumanConnectionString %>" DeleteCommand="DELETE FROM [registroad] WHERE [registroad] = @original_registroad AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([apellido] = @original_apellido) OR ([apellido] IS NULL AND @original_apellido IS NULL)) AND (([cargo] = @original_cargo) OR ([cargo] IS NULL AND @original_cargo IS NULL)) AND (([correo] = @original_correo) OR ([correo] IS NULL AND @original_correo IS NULL)) AND (([cedula] = @original_cedula) OR ([cedula] IS NULL AND @original_cedula IS NULL))" InsertCommand="INSERT INTO [registroad] ([nombre], [apellido], [cargo], [correo], [cedula]) VALUES (@nombre, @apellido, @cargo, @correo, @cedula)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [registroad], [nombre], [apellido], [cargo], [correo], [cedula] FROM [registroad] WHERE ([cedula] = @cedula)" UpdateCommand="UPDATE [registroad] SET [nombre] = @nombre, [apellido] = @apellido, [cargo] = @cargo, [correo] = @correo, [cedula] = @cedula WHERE [registroad] = @original_registroad AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([apellido] = @original_apellido) OR ([apellido] IS NULL AND @original_apellido IS NULL)) AND (([cargo] = @original_cargo) OR ([cargo] IS NULL AND @original_cargo IS NULL)) AND (([correo] = @original_correo) OR ([correo] IS NULL AND @original_correo IS NULL)) AND (([cedula] = @original_cedula) OR ([cedula] IS NULL AND @original_cedula IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_registroad" Type="Int32" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                        <asp:Parameter Name="original_apellido" Type="String" />
                        <asp:Parameter Name="original_cargo" Type="String" />
                        <asp:Parameter Name="original_correo" Type="String" />
                        <asp:Parameter Name="original_cedula" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="cargo" Type="String" />
                        <asp:Parameter Name="correo" Type="String" />
                        <asp:Parameter Name="cedula" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Bespecifica" Name="cedula" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="cargo" Type="String" />
                        <asp:Parameter Name="correo" Type="String" />
                        <asp:Parameter Name="cedula" Type="Int32" />
                        <asp:Parameter Name="original_registroad" Type="Int32" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                        <asp:Parameter Name="original_apellido" Type="String" />
                        <asp:Parameter Name="original_cargo" Type="String" />
                        <asp:Parameter Name="original_correo" Type="String" />
                        <asp:Parameter Name="original_cedula" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </div>
        </section>
    </main>
    </form>
</asp:Content>
