<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="Gestion.aspx.cs" Inherits="proyectosena.Gestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <header>
        <div><a href="admini.aspx">REGRESAR</a></div>
    </header>
    <main>
        <section>
            <h2>BUSQUEDA Y ACTUALIZACION</h2>
            <p>textotextotextotextotextotextotextotextotextotextotextotextotexto
            textotextotextotextotextotextotextotextotextotextotextotexto</p>

            <h2>Busquedad especifica</h2>
            <span>Ingrese el número de documento a modificar </span><asp:TextBox ID="Bespecifica" runat="server"></asp:TextBox>
            
            <div>
            
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="registroem" Width="732px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="cedula" HeaderText="cedula" SortExpression="cedula" />
                        <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                        <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                        <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                        <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
                        <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="registroem" HeaderText="registroem" InsertVisible="False" ReadOnly="True" SortExpression="registroem" />
                    </Columns>
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
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="registroad" DataSourceID="SqlDataSource2" Width="729px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="registroad" HeaderText="registroad" InsertVisible="False" ReadOnly="True" SortExpression="registroad" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                        <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
                        <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                        <asp:BoundField DataField="cedula" HeaderText="cedula" SortExpression="cedula" />
                    </Columns>
                </asp:GridView>
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
