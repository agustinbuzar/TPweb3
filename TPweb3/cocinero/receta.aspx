<%@ Page Title="" Language="C#" MasterPageFile="~/Cocinero.Master" AutoEventWireup="true" CodeBehind="receta.aspx.cs" Inherits="TPweb3.cocinero.receta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="container">
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
        <div class="col-sm-4 col-lg-4 col-md-4 center">

            <h1>Crear receta</h1>
            <br />

            <form id="form1" runat="server">

                <h4>Nombre</h4>
                <asp:TextBox ID="txbNombre" runat="server" type="text" class="form-control"></asp:TextBox>

                <div class="row">
                    <div class="col-sm-6 col-lg-6 col-md-6 center">
                        <h4>Tiempo de cocción (minutos)</h4>
                    </div>
                    <div class="col-sm-6 col-lg-6 col-md-6" style="margin-top: 10px;">
                        <asp:TextBox ID="txbTiempoCoc" runat="server" type="text" class="form-control"></asp:TextBox>
                    </div>
                </div>

                <h4>Descripción</h4>
                <textarea id="TextArea1" class="form-control" rows="3"></textarea>

                <h4>Pasos de realización</h4>
                <textarea id="TextArea2" class="form-control" rows="5"></textarea>

                <h4>Ingredientes</h4>
                <textarea id="TextArea3" class="form-control" rows="5"></textarea>

                <h4>Tipo de receta</h4>
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                    <asp:ListItem>- Seleccione tipo -</asp:ListItem>
                    <asp:ListItem>Gourmet</asp:ListItem>
                    <asp:ListItem>Diet</asp:ListItem>
                    <asp:ListItem>Casera</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="btn btn-default btn-lg btn-block" />

            </form>
        </div>
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
    </div>
</asp:Content>
