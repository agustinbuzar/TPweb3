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
                        <td>Usuario:
                            <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>E-Mail:
                            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></td>

                    </tr>
                    <tr>
                        <td>Recetas Creadas:
                            <asp:Label ID="lblCantRecetas" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Fecha de registro:
                            <asp:Label ID="lblFechaIni" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </div>
            <div class="col-sm-12 col-lg-12 col-md-12 center">
                <h2>Eventos Creados </h2>
                <hr />
                <asp:GridView CssClass="table table-bordered bs-table white" ID="grillaEventos" runat="server" AutoGenerateColumns="False" OnRowCommand="grillaEventos_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="IdEvento" HeaderText="IdEvento" />
                        
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Fecha" DataFormatString="{0:d}" HeaderText="Fecha de Realización" />
                        <asp:BoundField DataField="CantidadComensales" HeaderText="Cant. Comensales" />
                        <asp:BoundField DataField="Ubicacion" HeaderText="Lugar / Dirección" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" />
                        <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-danger" Text="Eliminar de lista" CommandName="sacar">
                            <ControlStyle CssClass="btn btn-danger btn-sm"></ControlStyle>
                        </asp:ButtonField>
                        <asp:ButtonField ButtonType="Button" CommandName="cancelar" Text="Cancelar Evento" ControlStyle-CssClass="btn btn-danger btn-sm"/>
                    </Columns>
                </asp:GridView>
               
                <div class="col-sm-12 col-lg-12 col-md-12 center">
                    <h2>Lista de Recetas </h2>
                    <hr />
                    <asp:GridView CssClass="table table-bordered bs-table white" ID="grillaRecetas" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="TiempoCoccion" HeaderText="Tiempo de cocción" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                            <asp:BoundField DataField="Ingredientes" HeaderText="Ingredientes" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo Receta" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
