<%@ Page Title="" Language="C#" MasterPageFile="~/Cocinero.Master" AutoEventWireup="true" CodeBehind="receta.aspx.cs" Inherits="TPweb3.cocinero.receta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="container">
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
        <div class="col-sm-4 col-lg-4 col-md-4 center">

            <h1>Crear receta</h1>
            <br />
            <h4>Nombre</h4>
            <asp:TextBox ID="txbNombre" runat="server" type="text" class="form-control" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Ingrese un nombre" ControlToValidate="txbNombre" runat="server" ForeColor="Red" Display="Dynamic" />

            <div class="row">
                <div class="col-sm-6 col-lg-6 col-md-6 center">
                    <h4>Tiempo de cocción (minutos)</h4>
                </div>
                <div class="col-sm-6 col-lg-6 col-md-6" style="margin-top: 10px;">
                    <asp:TextBox ID="txbTiempoCoccion" runat="server" type="text" class="form-control" Width="100%" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Complete el tiempo de coccion" ControlToValidate="txbTiempoCoccion" runat="server" ForeColor="Red" Display="Dynamic" />
                    <asp:RangeValidator ID="RangeValidator1" ErrorMessage="Ingrese un tiempo valido (Minimo 30 | Maximo 600)" ControlToValidate="txbTiempoCoccion" runat="server" MaximumValue="600" MinimumValue="30" ForeColor="Red" Display="Dynamic" />
                </div>
            </div>

            <h4>Descripción</h4>
            <asp:TextBox ID="txbDescripcion" runat="server" type="text" class="form-control" Width="100%" TextMode="MultiLine" Rows="3"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Ingrese una descripción" ControlToValidate="txbDescripcion" runat="server" ForeColor="Red" Display="Dynamic" />

            <h4>Pasos de realización</h4>
            <asp:TextBox ID="txbPasos" runat="server" type="text" class="form-control" Width="100%" TextMode="MultiLine" Rows="5"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Ingrese los pasos a seguir" ControlToValidate="txbPasos" runat="server" ForeColor="Red" Display="Dynamic" />

            <h4>Ingredientes</h4>
            <asp:TextBox ID="txbIngresientes" runat="server" type="text" class="form-control" Width="100%" TextMode="MultiLine" Rows="5"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Ingrese los ingredientes" ControlToValidate="txbIngresientes" runat="server" ForeColor="Red" Display="Dynamic" />

            <h4>Tipo de receta</h4>
            <asp:DropDownList ID="ddlTipoReceta" runat="server" class="form-control">
                <asp:ListItem>-Seleccione tipo-</asp:ListItem>
                <asp:ListItem>Gourmet</asp:ListItem>
                <asp:ListItem>Diet</asp:ListItem>
                <asp:ListItem>Casera</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ErrorMessage="Seleccine un tipo de receta" ControlToValidate="ddlTipoReceta" InitialValue="-Seleccione tipo-" runat="server" ForeColor="Red" Display="Dynamic" />
            <br />


            <asp:Button ID="btnCrearReceta" runat="server" Text="Crear receta" class="btn btn-default btn-lg btn-block" OnClick="btnCrearReceta_Click" />
        </div>
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
    </div>
</asp:Content>
