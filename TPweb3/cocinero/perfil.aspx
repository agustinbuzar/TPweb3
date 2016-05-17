<%@ Page Title="" Language="C#" MasterPageFile="~/Cocinero.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="TPweb3.cocinero.perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <br />
    <div class="container">
     <div class="row">
         <div class="col-sm-12 col-lg-12 col-md-12">
            <table class="table perfil">
                <tr>
                    <td>Juan Ignacio Murano</td>
                </tr>
                <tr>
                    <td>Juani.fdp@gmail.com</td>
                </tr><tr>
                    <td>Recetas Creadas: 4</td>
                </tr>
                <tr>
                    <td>Registrado el 14 de Marzo del 2016</td>
                </tr>
            </table>
        </div>
        <div class="col-sm-12 col-lg-12 col-md-12 center">
            <h2>Eventos Creados </h2> <hr />
                <asp:GridView  CssClass="table table-bordered bs-table white" ID="grillaEventos" runat="server" >
                     <Columns>
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px" HeaderText="¿Cancelar Evento?">
                                <ItemTemplate>
                                    <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#myModal">Cancelar</button>
                                   
                                </ItemTemplate>

<HeaderStyle Width="200px"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                </asp:GridView>
					<div id="myModal" class="modal fade" role="dialog">
					  <div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
						  <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Cancelar Evento</h4>
						  </div>
						  <div class="modal-body">
							<p>¿Esta Seguro que quiere Cancelar el Evento ?</p>
						  </div>
						  <div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                            <button type="button" class="btn btn-info" data-dismiss="modal">Si</button>
						  </div>
						</div>

					  </div>
					</div>
            <div class="col-sm-12 col-lg-12 col-md-12 center">
                <h2>Lista de Recetas </h2> <hr />
                <asp:GridView  CssClass="table table-bordered bs-table white" ID="grillaRecetas" runat="server">
                     <Columns>
      
                        </Columns>
                </asp:GridView>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
