<%@ Page Title="" Language="C#" MasterPageFile="~/paginamaestra.Master" AutoEventWireup="true" CodeBehind="admini.aspx.cs" Inherits="proyectosena.admini" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
		
    <link href="/css/StyleSheetadminis.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style2 {
            height: 251px;
        }
        .auto-style3 {
            height: 72px;
            width: 1354px;
            margin-left: 281px;
        }
        .auto-style5 {
            width: 602px;
            height: 117px;
            margin-left: 450px;
        }
        .auto-style6 {
            height: 120px;
            margin-left: 0px;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            margin-left: 483px;
            background-color: #CCFFFF;
        }
        .auto-style9 {
            margin-left: 479px;
            background-color: #CCFFFF;
        }
        .auto-style10 {
            text-align: left;
            width: 462px;
            height: 59px;
            margin-left: 171px;
            font-size: x-large;
        }
        .auto-style11 {
            text-align: left;
            margin-left: 480px;
        }
        .auto-style12 {
            text-align: left;
            width: 969px;
            margin-left: 471px;
        }
        .auto-style13 {
            text-align: left;
            margin-left: 477px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <header>
           
           <div id="header" class="auto-style1">
			<ul class="nav">
				<li><a href="migestion.aspx">MI GESTIÓN</a>
				</li>
				<li><a href="Gestion.aspx">ACTUALIZACIÓN</a>
				</li>
				<li><a href="#">TEST</a>
				</li>
				<li><a href="#">CONTACTO</a></li>
			</ul>
		</div>
			</header>
        <main>
				<section class="auto-style3">
					<div class="auto-style10">
						<strong>Bienvenido Sr Administrador</strong></div>

				</section>
				<section>
					<h2 class="auto-style5">CREDENCIALES</h2>
					<div class="auto-style12">
					<span>&nbsp;&nbsp;<span class="auto-style7"><strong>Ingrese el número de documento a actualizar&nbsp;<asp:TextBox ID="credenciales" runat="server" Width="237px"></asp:TextBox>
                    &nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>&nbsp;</div>
                    <div class="auto-style6">


					    <br />

                        <h2 class="auto-style13">Credenciales Administrador</h2>
					    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="cedula" DataSourceID="SqlDataSource1" Height="50px" Width="301px" CssClass="auto-style9">
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


                        <br />

                        <h2 class="auto-style11">Credenciales Empleado</h2>
                        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="cedula" DataSourceID="SqlDataSource2" Height="50px" Width="302px" CssClass="auto-style8">
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


                    </div>
						


				</section>
			</main>
			
			<footer class="auto-style2">

			</footer>

    </form>
</asp:Content>
