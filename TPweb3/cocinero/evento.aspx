﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Cocinero.Master" AutoEventWireup="true" CodeBehind="evento.aspx.cs" Inherits="TPweb3.cocinero.evento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <div class="container">
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
        <div class="col-sm-4 col-lg-4 col-md-4 center">

            <h1>Crear evento</h1>
            <br />
            <h4>Nombre</h4>
            <asp:TextBox ID="txbNombre" runat="server" type="text" class="form-control" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Ingrese el nombre del evento" ControlToValidate="txbNombre" runat="server" ForeColor="Red" Display="Dynamic" />

            <h4>Seleccione una fecha</h4>
            <asp:TextBox ID="txbFecha" runat="server" type="text" class="form-control" TextMode="Date" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Ingrese una fecha" ControlToValidate="txbFecha" runat="server" ForeColor="Red" Display="Dynamic" />
            <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Ingrese una fecha valida dd/mm/aaaa" Operator="DataTypeCheck" Type="Date" ControlToValidate="txbFecha" runat="server" ForeColor="Red" Display="Dynamic" />

            <h4>Descripción</h4>
            <asp:TextBox ID="txbDescrip" type="text" class="form-control" runat="server" TextMode="MultiLine" Rows="5" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Ingrese una descripción del evento" ControlToValidate="txbDescrip" runat="server" ForeColor="Red" Display="Dynamic" />

            <h4>Recetas</h4>
            <asp:CheckBoxList ID="cblRecetas" runat="server" CssClass="checkbox">
            </asp:CheckBoxList>
    

            <div class="row">
                <div class="col-sm-9 col-lg-9 col-md-9">
                    <h4>Cantidad máxima de comensales</h4>
                </div>
                <div class="col-sm-3 col-lg-3 col-md-3">
                    <asp:TextBox ID="txbCantComensales" runat="server" type="text" class="form-control" Width="60px"></asp:TextBox>
                </div>
                <div class="col-sm-9 col-lg-9 col-md-9">
                    <asp:RequiredFieldValidator ID="rvfCantComensales" ErrorMessage="Ingrese Cantidad Maxima de Comensales" ControlToValidate="txbCantComensales" runat="server" ForeColor="Red" Display="Dynamic" />
                    <asp:CompareValidator ID="cvCantComensales" ErrorMessage="Ingrese un valor numérico" ControlToValidate="txbCantComensales" runat="server" Type="Integer" Operator="DataTypeCheck" ForeColor="Red" Display="Dynamic" />
                </div>
            </div>

            <h4>Dirección completa</h4>
            <asp:TextBox ID="TxbDireccion" runat="server" type="text" class="form-control" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDireccion" ErrorMessage="Ingrese una Dirección" ControlToValidate="txbDireccion" runat="server" ForeColor="Red" Display="Dynamic" />

            <h4>Subir foto</h4>
            <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Red" />
            <br />

            <div class="row">
                <div class="col-md-6 center">
                    <h4>Precio</h4>
                </div>
                <div class="col-md-6" style="margin-top: 10px;">
                    <asp:TextBox ID="txtPrecio" runat="server" type="text" class="form-control" Width="100%" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPrecio" ErrorMessage="Ingrese un precio" ControlToValidate="txtPrecio" runat="server" ForeColor="Red" Display="Dynamic" />
                    <asp:CompareValidator ID="CompareValidator2" ErrorMessage="Ingrese un valor numérico" ControlToValidate="txtPrecio" Type="Double" Operator="DataTypeCheck" runat="server" ForeColor="Red" Display="Dynamic" />
                    <asp:RangeValidator ID="rvPrecio" ErrorMessage="Mayor a 0" ControlToValidate="txtPrecio" runat="server" MinimumValue="0" MaximumValue="10000000000" ForeColor="Red" Display="Dynamic" />
                </div>
            </div>
            <br />

            <asp:Button ID="btnCrearEvento" runat="server" Text="Crear evento" class="btn btn-default btn-lg btn-block" OnClick="btnCrearEvento_Click" OnClientClick="return ValidateCheckBoxList()" />
        </div>
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
    </div>


</asp:Content>
