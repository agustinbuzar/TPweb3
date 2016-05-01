<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TPweb3.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="container">
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
        <div class="col-sm-4 col-lg-4 col-md-4">
            <h1>Ingrese a MasterChuf</h1>
            <asp:TextBox ID="txbMail" runat="server" type="text" class="form-control" placeholder="Ingrese E-mail"></asp:TextBox>
            <br />
            <asp:TextBox ID="txbContraseña" runat="server" type="text" class="form-control" placeholder="Ingrese contraseña"></asp:TextBox>
            <br />
            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="btn btn-default btn-lg btn-block" />
        </div>
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
    </div>
</asp:Content>
