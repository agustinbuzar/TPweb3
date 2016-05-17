<%@ Page Title="" Language="C#" MasterPageFile="~/Comensal.Master" AutoEventWireup="true" CodeBehind="reservar.aspx.cs" Inherits="TPweb3.comensal.reservar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-10 center">
                    <h1>Reservar</h1>
                    <hr />
                    <asp:GridView CssClass="table table-bordered bs-table" ID="grillaEventos" runat="server">
                        <Columns>
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="200px">
                                <ItemTemplate>
                                    <%--Botones de eliminar y editar cliente...--%>
                                    <asp:Button ID="btnEdit" runat="server" Text="Reservar evento" CssClass="btn btn-info" PostBackUrl="~/comensal/elegirRecetas.aspx" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="col-lg-1">
                </div>
            </div>
        </div>
    </form>
</asp:Content>
