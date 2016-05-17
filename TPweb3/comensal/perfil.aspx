<%@ Page Title="" Language="C#" MasterPageFile="~/Comensal.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="TPweb3.comensal.perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6 center">
                <h1>Reservas realizadas</h1> <hr />
                <asp:GridView  CssClass="table table-bordered bs-table white" ID="grillaEventosReservados" runat="server">
                     <Columns>
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px">
                                <ItemTemplate>
                                    <asp:Button ID="btnEdit" runat="server" Text="Calificar" CssClass="btn btn-info" PostBackUrl="~/comensal/calificarEvento.aspx" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                </asp:GridView>
            </div>
            <div class="col-lg-3">

            </div>
        </div>
    </div>
</asp:Content>
