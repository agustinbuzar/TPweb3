<%@ Page Title="" Language="C#" MasterPageFile="~/Anonimo.Master" AutoEventWireup="true" CodeBehind="comentarios.aspx.cs" Inherits="TPweb3.comentarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="container">
        <div class="col-md-3"></div>
        <div class="col-md-6 center">
            <h1>Comentarios del evento</h1>
            <br />
            <asp:GridView ID="gvComentariosEvento" runat="server" CssClass="table table-bordered bs-table"></asp:GridView>
        </div>
        <div class="col-md-3"></div>
    </div>
</asp:Content>
