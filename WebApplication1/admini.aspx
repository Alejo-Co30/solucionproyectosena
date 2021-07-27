<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="admini.aspx.cs" Inherits="proyectosena.admini" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
		
    <link href="/css/StyleSheetadminis.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style2 {
            height: 251px;
        }
        .auto-style3 {
            height: 167px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <header>
           
           <div id="header" class="auto-style1">
			<ul class="nav">
				<li><a href="migestion.aspx">Mi GESTION</a>
				</li>
				<li><a href="Gestion.aspx">ACTUAliZACIÓN</a>
				</li>
				<li><a href="#">TEST</a>
				</li>
				<li><a href="#">CONCTATO</a></li>
			</ul>
		</div>
			</header>
		<hr />
			<main>
				<section class="auto-style3">
					<div>
						BIENVENIDOS!!!!!!<!--Imagenes-->
					</div>

				</section>
				<section>
					<h2>CREDENCIALES</h2>
					<span>Ingrese el numero de documento a actualizar<asp:TextBox ID="credenciales" runat="server"></asp:TextBox>
                    </span>
					&nbsp;<div>


					    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="cedula" DataSourceID="SqlDataSource1" Height="50px" Width="279px">
                            <Fields>
                                <asp:BoundField DataField="cedula" HeaderText="cedula" ReadOnly="True" SortExpression="cedula" />
                                <asp:BoundField DataField="clave" HeaderText="clave" SortExpression="clave" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cmhumanConnectionString %>" DeleteCommand="DELETE FROM [loginadministrador] WHERE [cedula] = @original_cedula AND (([clave] = @original_clave) OR ([clave] IS NULL AND @original_clave IS NULL))" InsertCommand="INSERT INTO [loginadministrador] ([cedula], [clave]) VALUES (@cedula, @clave)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [cedula], [clave] FROM [loginadministrador] WHERE ([cedula] = @cedula)" UpdateCommand="UPDATE [loginadministrador] SET [clave] = @clave WHERE [cedula] = @original_cedula AND (([clave] = @original_clave) OR ([clave] IS NULL AND @original_clave IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_cedula" Type="Int32" />
                                <asp:Parameter Name="original_clave" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cedula" Type="Int32" />
                                <asp:Parameter Name="clave" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="credenciales" Name="cedula" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="clave" Type="Int32" />
                                <asp:Parameter Name="original_cedula" Type="Int32" />
                                <asp:Parameter Name="original_clave" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

					</div>
                    <div>


                        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="cedula" DataSourceID="SqlDataSource2" Height="50px" Width="284px">
                            <Fields>
                                <asp:BoundField DataField="cedula" HeaderText="cedula" ReadOnly="True" SortExpression="cedula" />
                                <asp:BoundField DataField="clave" HeaderText="clave" SortExpression="clave" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cmhumanConnectionString %>" DeleteCommand="DELETE FROM [loginempleado] WHERE [cedula] = @original_cedula AND (([clave] = @original_clave) OR ([clave] IS NULL AND @original_clave IS NULL))" InsertCommand="INSERT INTO [loginempleado] ([cedula], [clave]) VALUES (@cedula, @clave)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [cedula], [clave] FROM [loginempleado] WHERE ([cedula] = @cedula)" UpdateCommand="UPDATE [loginempleado] SET [clave] = @clave WHERE [cedula] = @original_cedula AND (([clave] = @original_clave) OR ([clave] IS NULL AND @original_clave IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_cedula" Type="Int32" />
                                <asp:Parameter Name="original_clave" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cedula" Type="Int32" />
                                <asp:Parameter Name="clave" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="credenciales" Name="cedula" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="clave" Type="Int32" />
                                <asp:Parameter Name="original_cedula" Type="Int32" />
                                <asp:Parameter Name="original_clave" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <br />


                    </div>
						


				</section>
			</main>
			
			<footer class="auto-style2">

			</footer>

    </form>
</asp:Content>
