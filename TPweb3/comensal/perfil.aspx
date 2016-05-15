<%@ Page Title="" Language="C#" MasterPageFile="~/Comensal.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="TPweb3.comensal.perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="formPerfil" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6 center">
                <h1>Reservas realizadas</h1> <hr />
                <asp:GridView ID="grillaEventosReservados" runat="server">
                    <Columns>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="col-lg-3">

            </div>
        </div>
    </div>
    </form>
</asp:Content>
