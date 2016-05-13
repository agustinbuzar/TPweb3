<%@ Page Title="" Language="C#" MasterPageFile="~/Cocinero.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="TPweb3.cocinero.perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <br />
    <div class="container">
        <div class="col-sm-8 col-lg-8 col-md-8 center">
            <table class="table table-striped">
                <tr>
                    <td>Evento 1</td>
                    <td>Buenisimo</td>
                </tr>
                <tr>
                    <td>Evento 2</td>
                    <td>malisimo</td>
                </tr>
            </table>
            <div class="col-sm-8 col-lg-8 col-md-8">
                <table class="table table-striped">
                    <tr>
                        <td>Receta 1</td>
                    </tr>
                    <tr>
                        <td>Receta 2</td>
                    </tr>
                    <tr>
                        <td>Receta 3</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="col-sm-4 col-lg-4 col-md-4">
            <table class="table">
                <tr>
                    <td>Nombre y Apellido</td>
                </tr>
                <tr>
                    <td>Usuario</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
