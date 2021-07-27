<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="migestion.aspx.cs" Inherits="proyectosena.migestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>


    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

    <header>
        <a href="admini.aspx">REGRESAR</a>
    </header>
    <main>
        <section>RECUERDE INGRESAR SUS DATOS Y ACTUALIZARLOS PERIODICAMENTE</section>
        <div>
            <ul>
                <li>NOMBRE
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </li>
            </ul>
            <ul>
                <li>APELLIDO<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </li>
            </ul>
            <ul>
                <li>CARGO<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </li>
                <li>CORREO CORPORATIVO<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </li>
            </ul>
            <span>
            <asp:Button ID="Button1" runat="server" Text="Button" Width="121px" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            </span>
        </div>
        <section><h2>RESULTADOS&nbsp;</h2>
            <div>
                <span>INGRESE UN CODIGO<asp:TextBox ID="CEDULA" runat="server"></asp:TextBox>
                </span>
                &nbsp;<br />
                <div> 
                    <br />
                    <div class="auto-style1">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="registroem" DataSourceID="SqlDataSource1" GridLines="None" Height="16px" Width="811px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="registroem" HeaderText="registroem" InsertVisible="False" ReadOnly="True" SortExpression="registroem" />
                                <asp:BoundField DataField="cedula" HeaderText="cedula" SortExpression="cedula" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                                <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                                <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                                <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cmhumanConnectionString %>" DeleteCommand="DELETE FROM [registroem] WHERE [registroem] = @registroem" InsertCommand="INSERT INTO [registroem] ([cedula], [telefono], [edad], [correo], [cargo], [apellido], [nombre]) VALUES (@cedula, @telefono, @edad, @correo, @cargo, @apellido, @nombre)" SelectCommand="SELECT [registroem], [cedula], [telefono], [edad], [correo], [cargo], [apellido], [nombre] FROM [registroem] WHERE ([cedula] = @cedula) ORDER BY [nombre] DESC, [apellido] DESC, [correo] DESC" UpdateCommand="UPDATE [registroem] SET [cedula] = @cedula, [telefono] = @telefono, [edad] = @edad, [correo] = @correo, [cargo] = @cargo, [apellido] = @apellido, [nombre] = @nombre WHERE [registroem] = @registroem">
                        <DeleteParameters>
                            <asp:Parameter Name="registroem" Type="Int32" />
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
                            <asp:ControlParameter ControlID="CEDULA" Name="cedula" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="cedula" Type="Int32" />
                            <asp:Parameter Name="telefono" Type="String" />
                            <asp:Parameter Name="edad" Type="Int32" />
                            <asp:Parameter Name="correo" Type="String" />
                            <asp:Parameter Name="cargo" Type="String" />
                            <asp:Parameter Name="apellido" Type="String" />
                            <asp:Parameter Name="nombre" Type="String" />
                            <asp:Parameter Name="registroem" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    RESULTADOS<br />
                    <br />
                    <br />
                    <div class="auto-style1">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="idtestemple" DataSourceID="SqlDataSource2" GridLines="None" style="height: 161px" Width="813px">
                            <Columns>
                                <asp:BoundField DataField="idtestemple" HeaderText="idtestemple" InsertVisible="False" ReadOnly="True" SortExpression="idtestemple" />
                                <asp:BoundField DataField="registroem" HeaderText="registroem" SortExpression="registroem" />
                                <asp:BoundField DataField="prg1" HeaderText="prg1" SortExpression="prg1" />
                                <asp:BoundField DataField="prg2" HeaderText="prg2" SortExpression="prg2" />
                                <asp:BoundField DataField="prg3" HeaderText="prg3" SortExpression="prg3" />
                                <asp:BoundField DataField="prg4" HeaderText="prg4" SortExpression="prg4" />
                                <asp:BoundField DataField="prg5" HeaderText="prg5" SortExpression="prg5" />
                                <asp:BoundField DataField="prg6" HeaderText="prg6" SortExpression="prg6" />
                                <asp:BoundField DataField="prg7" HeaderText="prg7" SortExpression="prg7" />
                                <asp:BoundField DataField="prg8" HeaderText="prg8" SortExpression="prg8" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cmhumanConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [idtestemple] = @idtestemple" InsertCommand="INSERT INTO [test] ([prg1], [prg2], [prg3], [prg4], [prg5], [prg6], [prg7], [prg8], [registroem]) VALUES (@prg1, @prg2, @prg3, @prg4, @prg5, @prg6, @prg7, @prg8, @registroem)" SelectCommand="SELECT [idtestemple], [prg1], [prg2], [prg3], [prg4], [prg5], [prg6], [prg7], [prg8], [registroem] FROM [test] WHERE ([registroem] = @registroem)" UpdateCommand="UPDATE [test] SET [prg1] = @prg1, [prg2] = @prg2, [prg3] = @prg3, [prg4] = @prg4, [prg5] = @prg5, [prg6] = @prg6, [prg7] = @prg7, [prg8] = @prg8, [registroem] = @registroem WHERE [idtestemple] = @idtestemple">
                        <DeleteParameters>
                            <asp:Parameter Name="idtestemple" Type="Int32" />
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
                            <asp:Parameter Name="registroem" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="registroem" PropertyName="SelectedValue" Type="Int32" />
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
                            <asp:Parameter Name="registroem" Type="Int32" />
                            <asp:Parameter Name="idtestemple" Type="Int32" />
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
